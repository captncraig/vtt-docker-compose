#!/bin/bash

docker stop foundry || true && docker rm foundry || true

# todo: make a host list in the env file and launch an instance of foundry per host
source .env

docker run \
  --detach \
  --name foundry \
  --env FOUNDRY_USERNAME=$FOUNDRY_USER \
  --env FOUNDRY_PASSWORD=$FOUNDRY_PASS \
  --env FOUNDRY_ADMIN_KEY=$FOUNDRY_PASS \
  --env VIRTUAL_HOST=vtt.captncraig.io \
  --env LETSENCRYPT_HOST=vtt.captncraig.io \
  --env FOUNDRY_HOSTNAME=vtt.captncraig.io \
  --env FOUNDRY_PROXY_SSL=true \
  --env FOUNDRY_VERSION=0.6.5 \
  --publish 30000:30000/tcp \
  --volume `pwd`/data:/data \
  felddy/foundryvtt:release