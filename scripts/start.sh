#!/usr/bin/env sh

echo '---- START DOCKER ----'
docker-compose -f ./environment/docker-compose.yaml down --remove-orphans -v
docker-compose -f ./environment/docker-compose.yaml build --no-cache
docker-compose -f ./environment/docker-compose.yaml up -d