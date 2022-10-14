#!/usr/bin/env bash
set -e

issue_certificate () {

    local PARAM

    if [[ ${DNS_PROVIDER} == "gcp" ]]; then
        PARAM="--dns-google --dns-google-credentials ${GCP_CREDENTIALS_FILE} --dns-google-propagation-seconds 90"
    elif [[ ${DNS_PROVIDER} == "aws" ]]; then
        PARAM="--dns-route53"
    fi

    ${CERTBOT_TEST_MODE} && PARAM+=" --test-cert"

    if certbot certonly -d "${3}" --email "${CERTBOT_ACCOUNT}" --force-renewal --agree-tos --non-interactive "${PARAM}"; then

        echo -n "
        apiVersion: v1
        kind: Secret
        metadata:
          name: ${2}
          namespace: ${1}
          annotations:
            nodis.com.br/certificate-owner-type: \"${4}\"
            nodis.com.br/certificate-owner-name: \"${5}\"
        data:
          tls.crt: $(base64 -w 0 /etc/letsencrypt/live/"${3#"*."}"/fullchain.pem)
          tls.key: $(base64 -w 0 /etc/letsencrypt/live/"${3#"*."}"/privkey.pem)
        type: kubernetes.io/tls" | kubectl apply -f -
    fi

}

get_lifetime () {

    local EXPIRATION_DATE CERTIFICATE

    CERTIFICATE=${1}
    EXPIRATION_DATE=$(echo "${CERTIFICATE}" | openssl x509 -enddate -noout | sed "s/.*=\(.*\)/\1/" 2> /dev/null)
    echo $(( ($(date -d "${EXPIRATION_DATE}" +%s) - $(date -d now +%s)) / 86400 ))

}

get_domain () {

    local CERTIFICATE SUBJECT

    CERTIFICATE=${1}
    SUBJECT=$(echo "${CERTIFICATE}" | openssl x509 -noout -subject 2> /dev/null)
    echo "${SUBJECT#"subject=CN = "}"

}

verify_and_issue_certificate () {

    local NAMESPACE NAME DESIRED_DOMAIN OWNER_CLASS OWNER_NAME DEFAULT_IFS CERTIFICATE LIFETIME CURRENT_DOMAIN

    NAMESPACE=$(csvcut -c 1 <<< "${1}")
    NAME=$(csvcut -c 2 <<< "${1}")
    DESIRED_DOMAIN=$(csvcut -c 3 <<< "${1}")
    OWNER_CLASS=$(csvcut -c 4 <<< "${1}")
    OWNER_NAME=$(csvcut -c 5 <<< "${1}")

    ${DEBUG} && echo "found ${NAMESPACE}/${NAME} in ${OWNER_CLASS} ${OWNER_NAME}"
    ${DEBUG} && echo "desired domain: ${DESIRED_DOMAIN}"

    DEFAULT_IFS=${IFS}
    IFS=""

    CERTIFICATE=$(kubectl -n "${NAMESPACE}" get secret "${NAME}" -o=jsonpath="{.data.tls\.crt}" 2> /dev/null | base64 -d || echo "")

    if [[ -n ${CERTIFICATE} ]]; then
        LIFETIME=$(get_lifetime "${CERTIFICATE}")
        CURRENT_DOMAIN=$(get_domain "${CERTIFICATE}")
        ${DEBUG} && echo "current domain: ${CURRENT_DOMAIN}"
        ${DEBUG} && echo "lifetime: ${LIFETIME}d (min: ${CERTBOT_MIN_LIFETIME}d)"
    fi

    IFS=${DEFAULT_IFS}

    if [[ -z ${CERTIFICATE} ]] || [[ ${DESIRED_DOMAIN} != "${CURRENT_DOMAIN}" ]] || [[ ${LIFETIME} -lt ${CERTBOT_MIN_LIFETIME} ]]; then
        echo "issuing ${NAMESPACE}/${NAME} [${DESIRED_DOMAIN}]"
        ${DRY_RUN} || issue_certificate "${NAMESPACE}" "${NAME}" "${DESIRED_DOMAIN}" "${OWNER_CLASS}" "${OWNER_NAME}"
    fi

}

while true; do

    for C in $(kubectl get --all-namespaces ingresses -o=json | jq -r '.items[] | [.metadata.namespace,.spec.tls[0].secretName,.spec.tls[0].hosts[0],"ingress",.metadata.name] | @csv' | sed 's/"//g'); do
        verify_and_issue_certificate "${C}"
    done

    for C in $(kubectl get --all-namespaces services -o=json | jq -r '.items[] | select(.metadata.annotations."nodis.com.br/managed-certificate" != null) | [.metadata.namespace,.metadata.annotations."nodis.com.br/managed-certificate",.metadata.annotations."nodis.com.br/managed-domain","service",.metadata.name] | @csv' | sed 's/"//g'); do
        verify_and_issue_certificate "${C}"
    done

    for C in $(kubectl get --all-namespaces configmaps -o=json | jq -r '.items[] | select(.metadata.annotations."nodis.com.br/managed-certificate-owner" == "true") | [.metadata.namespace,.data.certificate,.data.domain,"configmap",.metadata.name] | @csv' | sed 's/"//g'); do
        verify_and_issue_certificate "${C}"
    done

    sleep "${INTERVAL:-1m}"

done