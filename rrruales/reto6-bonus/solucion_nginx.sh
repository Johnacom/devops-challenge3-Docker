#!/bin/bash

# Crear Volumen
docker volume create static_content_nginx

# Ejecutar contenedor nginx
docker run -d --name bootcamp-web \
    -v static_content_nginx:/usr/share/nginx/html \
    -p 9999:80 nginx

# Esperar 10 seg mientras se crea correctamente el contenedor
sleep 10

# Copiar los archivos estaticos para posteriormente importar los datos a la DB
docker cp ./bootcamp-web bootcamp-web:/usr/share/nginx/html