#!/bin/bash

# Clonar repositorio
echo "Clonar repositorio"
git clone https://github.com/roxsross/pokepy.git

# Ingresar al directorio del repositorio
echo "Ingresar al directorio del repositorio"
cd pokepy || exit
ls

# Crear imagen
echo "Crear imagen"
docker build -t waltergsteven/pokepy:1.0 .

# Crear contenedor
echo "Crear contenedor"
docker run --name pokepy -p 5000:5000 -d waltergsteven/pokepy1.0
docker ps

# Iniciar sesión en Docker
echo "Iniciar sesión en Docker"
docker login -u waltergsteven

# Subir imagen a Docker Hub
echo "Subir imagen a Docker Hub"
docker push waltergsteven/pokepy

# Eliminar contenedor
echo "Eliminar contenedor despues de 60 segundos"
sleep 60
docker stop pokepy
docker rm -f pokepy