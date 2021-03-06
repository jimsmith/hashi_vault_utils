#!/bin/sh
VAULT_BASE_URL=${VAULT_ADDR-http://localhost:8200}
if [ -z $1 ]
then
 echo please provide policy name
 exit 1
fi

TTL=${2-175000h}

echo vault token-create -address=$VAULT_BASE_URL -policy="$1" -lease="$TTL"
vault token-create -address=$VAULT_BASE_URL -policy="$1" -lease="$TTL"
