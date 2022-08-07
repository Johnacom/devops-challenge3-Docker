#!/bin/bash
docker run -d \
    --name bbdd \
    -p 3307:3306 \
    -v ~/apps/mariadb/data:/var/lib/mysql \
    -e MYSQL_ROOT_PASSWORD=root \
    -e MYSQL_PASSWORD=invitado \
    -e MYSQL_USER=invitado \
    -e MYSQL_DATABASE=prueba \
    mariadb:10.7

docker ps