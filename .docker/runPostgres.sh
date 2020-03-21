#!/usr/bin/env bash

# docker pull postgres
CONTAINER_NAME=node-postgres

docker run \
    --name $CONTAINER_NAME \
    --publish 5432:5432 \
    --env POSTGRES_PASSWORD=$PG_PASSWORD \
    --detach \
    postgres

CONTAINER_IP=`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $CONTAINER_NAME`
echo "Container list running on $CONTAINER_IP connect to it there."
