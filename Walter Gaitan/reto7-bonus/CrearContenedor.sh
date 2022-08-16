#!/bin/bash

# Crear contenedor
echo "Creando contenedor apache"
docker build -t php .

docker run -dit --name web -p 8000:80 php
