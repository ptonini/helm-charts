#!/bin/bash
set -e

while true; do

    ${DEBUG} && echo "starting"

    for CONFIG in $(kubectl get configmaps --all-namespaces -l ingress-config="true" -o=json | jq -rc '.items[]'); do

        NAMESPACE=$(jq -r '.metadata.namespace' <<< "${CONFIG}")
        INGRESS=$(jq -r '.data.ingress' <<< "${CONFIG}")
        HOSTNAME=$(jq -r '.data.hostname // .data.domain' <<< "${CONFIG}")
        KONG_PLUGINS=$(jq -r '.data.kong_plugins' <<< "${CONFIG}")
        MONITORING_ROUTE=$(jq -r '.data.monitoring_route' <<< "${CONFIG}")
        INGRESS_CLASS=$(jq -r '.data.ingress_class' <<< "${CONFIG}")
        CERTIFICATE_ISSUER=$(jq -r '.data.cert_issuer' <<< "${CONFIG}")

        SERVICES=$(kubectl get -n "${NAMESPACE}" services -l ingress="${INGRESS}" -o json)

        CONFIG_STRING="${HOSTNAME},${KONG_PLUGINS},${MONITORING_ROUTE},${INGRESS_CLASS},${CERTIFICATE_ISSUER}"
        PATHS_STRING=$(jq -r '.items[] | [.metadata.annotations."nodis.com.br/service-route",.metadata.name,.spec.ports[0].port] | @csv' <<< "${SERVICES}" | sort)

        ${DEBUG} && echo "found ingress ${NAMESPACE}/${INGRESS}"

        unset CURRENT_CONFIG_STRING CURRENT_PATHS

        if kubectl -n "${NAMESPACE}" get ingress "${INGRESS}" > /dev/null 2>&1; then
            CURRENT_CONFIG=$(kubectl -n "${NAMESPACE}" get ingress "${INGRESS}" -o json)
            CURRENT_HOSTNAME=$(jq -r '.spec.rules[0].host' <<< "${CURRENT_CONFIG}" )
            CURRENT_KONG_PLUGINS=$(jq -r '.metadata.annotations."konghq.com/plugins"' <<< "${CURRENT_CONFIG}")
            CURRENT_MONITORING_ROUTE=$(jq -r '.metadata.annotations."nodis.com.br/monitoring-route"' <<< "${CURRENT_CONFIG}")
            CURRENT_INGRESS_CLASS=$(jq -r '.metadata.annotations."kubernetes.io/ingress.class"' <<< "${CURRENT_CONFIG}")
            CURRENT_CERTIFICATE_ISSUER=$(jq -r '.metadata.annotations."cert-manager.io/cluster-issuer"' <<< "${CURRENT_CONFIG}")

            CURRENT_CONFIG_STRING="${CURRENT_HOSTNAME},${CURRENT_KONG_PLUGINS},${CURRENT_MONITORING_ROUTE},${CURRENT_INGRESS_CLASS},${CURRENT_CERTIFICATE_ISSUER}"
            CURRENT_PATHS_STRING=$(kubectl -n "${NAMESPACE}" get ingress "${INGRESS}" -o json | jq -r '.spec.rules[0].http.paths[] | [.path,.backend.service.name,.backend.service.port.number] | @csv' | sort)

            ${DEBUG} && echo "desired config: ${CONFIG_STRING}"
            ${DEBUG} && echo "current config: ${CURRENT_CONFIG_STRING}"
            ${DEBUG} && echo "desired paths:  ${PATHS_STRING//[$'\n']/ }"
            ${DEBUG} && echo "current paths:  ${CURRENT_PATHS_STRING//[$'\n']/ }"
        else
            ${DEBUG} && echo "ingress ${NAMESPACE}/${INGRESS} is not installed"
        fi

        if [[ -z ${PATHS_STRING} ]]; then
            ${DEBUG} && echo "ingress ${INGRESS} has no associated services"
            if helm status "${INGRESS}" -n "${NAMESPACE}" > /dev/null 2>&1; then
                echo "removing: ${INGRESS}"
                ${DRY_RUN} || helm uninstall "${INGRESS}" -n "${NAMESPACE}"
            else
                ${DEBUG} && echo "ingress ${NAMESPACE}/${INGRESS} has no helm resource"
            fi
        elif [[ ${CURRENT_CONFIG_STRING} != "${CONFIG_STRING}" ]] || [[ ${CURRENT_PATHS_STRING} != "${PATHS_STRING}" ]]; then
            echo "updating: ${NAMESPACE}/${INGRESS}"
            PATHS_JSON=$(jq '.items | map({path:.metadata.annotations."nodis.com.br/service-route",service:.metadata.name,port:.spec.ports[0].port})' <<< "${SERVICES}")
            VALUES="{\"domain\": \"${HOSTNAME}\", \"paths\": ${PATHS_JSON}}"
            VALUES=$(jq '.annotations += {"ingress.kubernetes.io/force-ssl-redirect": "true"}' <<< "${VALUES}")
            VALUES=$(jq '.annotations += {"konghq.com/strip-path": "true"}' <<< "${VALUES}")
            [[ -n ${INGRESS_CLASS//null/} ]] && VALUES=$(jq --arg A "${INGRESS_CLASS}" '.annotations += {"kubernetes.io/ingress.class": $A}' <<< "${VALUES}")
            [[ -n ${MONITORING_ROUTE//null/} ]] && VALUES=$(jq --arg A "${MONITORING_ROUTE}" '.annotations += {"nodis.com.br/monitoring-route": $A}' <<< "${VALUES}")
            [[ -n ${KONG_PLUGINS//null/} ]] && VALUES=$(jq --arg A "${KONG_PLUGINS}" '.annotations += {"konghq.com/plugins": $A}' <<< "${VALUES}")
            [[ -n ${CERTIFICATE_ISSUER//null/} ]] && VALUES=$(jq --arg A "${CERTIFICATE_ISSUER}" '.annotations += {"cert-manager.io/cluster-issuer": $A}' <<< "${VALUES}")
            ${DEBUG} && echo "${VALUES}"
            ${DRY_RUN} && EXTRA_ARGS="--dry-run"
            helm upgrade --install -f <(echo "${VALUES}") -n "${NAMESPACE}" --repo "${CHARTS_REPOSITORY}" "${INGRESS}" "${INGRESS_CHART}" ${EXTRA_ARGS}
        fi

    done
    sleep "${INTERVAL:-1m}"

done
