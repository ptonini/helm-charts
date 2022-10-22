#!/usr/bin/env bash
set -e

DNS_FILE=${DNS_FILE:-/tmp/dns.json}

if [[ ${CLOUD_PROVIDER} == "aws" ]]; then
  LOAD_BALANCER_ADDRESS_KEY="hostname"
else
  LOAD_BALANCER_ADDRESS_KEY="ip"
fi

get_record_type () {

  local VALID_IP_ADDRESS_REGEX='^(0*(1?[0-9]{1,2}|2([0-4][0-9]|5[0-5]))\.){3}0*(1?[0-9]{1,2}|2([‌​0-4][0-9]|5[0-5]))$'
  local VALID_HOSTNAME_REGEX='^(([a-zA-Z0-9]|[a-zA-Z0-9][a-zA-Z0-9\-]*[a-zA-Z0-9])\.)*([A-Za-z0-9]|[A-Za-z0-9][A-Za-z0-9\-]*[A-Za-z0-9])$'

  if [[ ${1} =~ ${VALID_IP_ADDRESS_REGEX} ]]; then
      echo "A"
  elif [[ ${1} =~ ${VALID_HOSTNAME_REGEX} ]]; then
      echo "CNAME"
  else
    exit 1
  fi

}

get_zone_id () {

    local DOMAIN DOMAIN_ARRAY ZONE_ID
    IFS="." read -r -a DOMAIN_ARRAY <<< "${1}"

    for (( INDEX=${#DOMAIN_ARRAY[@]}-1 ; INDEX>=0 ; INDEX-- )); do
        DOMAIN="${DOMAIN_ARRAY[INDEX]}.${DOMAIN}"
        ZONE_ID=$(aws route53 list-hosted-zones --query 'HostedZones[?Name==`'"${DOMAIN}"'`].Id' --output text)
        [[ -n ${ZONE_ID} ]] && break
    done

    [[ -n ${ZONE_ID} ]] && echo "${ZONE_ID}" || exit 1

}

verify_and_update_record () {

    local NAME RECORD ZONE_ID RECORD_TYPE CURRENT_RECORD

    NAME=$(echo "${1}" | awk -F, '{ print $1}') && (${DEBUG} && echo "found ${NAME}" || exit 0)
    RECORD=$(echo "${1}" | awk -F, '{ print $2}') && (${DEBUG} && echo "desired record: ${RECORD}" || exit 0)

    [[ ${RECORD} == '""' ]] && (echo "could not find address for $NAME loadbalancer"; exit 1)

    ZONE_ID=$(get_zone_id "${NAME}") || (echo "zone id for ${NAME} not found"; exit 1)
    RECORD_TYPE=$(get_record_type "${RECORD}") || (echo "record type for ${RECORD} not found"; exit 1)

    [[ ${RECORD_TYPE} == "CNAME" ]] && RECORD+="."

    CURRENT_RECORD=$(dig "${NAME}" "${RECORD_TYPE}" +short | head -n 1) && (${DEBUG} && echo "current record: ${CURRENT_RECORD}" || exit 0)

    if [[ ${CURRENT_RECORD} != "${RECORD}" ]]; then
        echo "updating record for ${NAME}"
        echo '{"Changes": [{"Action": "UPSERT", "ResourceRecordSet": {"Name": "'"${NAME}"'.", "Type": "'"${RECORD_TYPE}"'", "TTL": 300, "ResourceRecords": [{"Value": "'${RECORD}'"}]}}]}' > "${DNS_FILE}"
        ${DEBUG} && jq -r . "${DNS_FILE}"
        ${DRY_RUN} || aws route53 change-resource-record-sets --hosted-zone-id "${ZONE_ID}" --change-batch "file://${DNS_FILE}"
        : > "${DNS_FILE}"
    fi

}

while true; do

    for D in $(kubectl get --all-namespaces ingresses -o=json | jq -r '.items[] | [.spec.tls[0].hosts[0],.status.loadBalancer.ingress[0].'${LOAD_BALANCER_ADDRESS_KEY}'] | @csv' | sed 's/"//g'); do
        verify_and_update_record "${D}"
    done

    for D in $(kubectl get --all-namespaces services -o=json | jq -r '.items[] | select(.metadata.annotations."nodis.com.br/managed-domain" != null) | [.metadata.annotations."nodis.com.br/managed-domain",.status.loadBalancer.ingress[0].'${LOAD_BALANCER_ADDRESS_KEY}'] | @csv' | sed 's/"//g'); do
        verify_and_update_record "${D}"
    done

    sleep "${INTERVAL:-1m}"

done
