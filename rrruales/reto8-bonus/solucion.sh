#!/bin/bash

echo 'Clonando repositorio'
git clone https://github.com/roxsross/pokepy.git

echo 'Cambiando a Workdir'
cd pokepy

echo 'Compilando Dockerfile con tag'
docker build -t rolo96/pokepy:1.0.0 .

echo 'Inciando sesion en DockerHub'
docker login -u rolo96 -p '<password>'

echo 'Push imagen a DockerHub'
docker push rolo96/pokepy:1.0.0

echo 'Ejecutar contenedor localmente'
docker run --name pokepy -p 5000:5000 \
    -d rolo96/pokepy:1.0.0

