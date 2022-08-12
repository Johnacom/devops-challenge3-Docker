#!/bin/bash

# Crear Dockerfile
echo 'Creando archivo Dockerfile'

echo 'FROM node:alpine

LABEL maintainer="Walter Gaitan "
LABEL project="node-web"

EXPOSE 4000

COPY ./hello-bootcamp /app

WORKDIR /app/hello-bootcamp

RUN npm install

CMD [ "npm", "run", "start" ]' > Dockerfile

# Crear volumen
echo 'Creando volumen'
docker volume create static_content_node

# Crear contenedor
echo 'Creando contenedor'
docker build . -t node-web

# Correr contenedor
echo 'Corriendo contenedor'
docker run -d --name node-web \
    -v static_content_node:/app/hello-bootcamp \
    -p 5050:4000 node-web

# Verificar que el contenedor esta corriendo
docker ps

# Crear tag
docker tag node-web waltergsteven/node-web:v1.0.0