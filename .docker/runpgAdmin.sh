#!/usr/bin/env bash

# docker pull dpage/pgadmin4

docker run \
    --name pgAdmin \
    --publish 8080:80 \
    --publish 4443:443 \
    --network "bridge" \
    --env PGADMIN_DEFAULT_EMAIL=user@domain.com \
    --env PGADMIN_DEFAULT_PASSWORD=password \
    --detach \
    dpage/pgadmin4
