#!/bin/bash

# Desplegar contenedor PHP
docker run --name web -p 8000:80 \
    -d php:7.4-apache

# Esperar 10 seg mientras levanta el contenedor
sleep 10

# Copiar archivos a ruta donde lee el servidor
docker cp ./index.html web:/var/www/html
docker cp ./mes.php web:/var/www/html
