#!/bin/bash

# Crear contenedores
docker-compose up -d

# Esperar un tiempo antes de eliminar los contenedores
sleep 60

# Eliminar contenedores
echo "Eliminando contenedores"
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)

# Mostrar contenedores
echo "Contenedores eliminados"
docker ps -a