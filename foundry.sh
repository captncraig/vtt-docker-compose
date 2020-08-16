#!/bin/bash

docker stop foundry || true && docker rm foundry || true

source .env

docker run \
  --name foundry \
  --env FOUNDRY_USERNAME=$FOUNDRY_USER \
  --env FOUNDRY_PASSWORD=$FOUNDRY_PASS \
  --publish 30000:30000/tcp \
  --volume /data:`pwd`/data \
  felddy/foundryvtt:release