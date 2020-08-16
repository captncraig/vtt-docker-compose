#!/bin/bash

docker stop foundry || true && docker rm foundry || true

# todo: make a host list in the env file and launch an instance of foundry per host
source .env

docker run \
  --name foundry \
  --env FOUNDRY_USERNAME=$FOUNDRY_USER \
  --env FOUNDRY_PASSWORD=$FOUNDRY_PASS \
  --env "VIRTUAL_HOST=vtt.captncraig.io" \
  --env "LETSENCRYPT_HOST=vtt.captncraig.io" \
  --publish 30000:30000/tcp \
  --volume /data:`pwd`/data \
  felddy/foundryvtt:release