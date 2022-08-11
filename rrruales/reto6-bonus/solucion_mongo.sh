#!/bin/bash

# Crear Volumen
docker volume create static_content_mongo

# Ejecutar contenedor mongo
docker run -d --name mongodb \
    -e MONGO_INITDB_ROOT_USERNAME=invitado \
    -e MONGO_INITDB_ROOT_PASSWORD=invitado \
    -v static_content_mongo:/data/db \
    mongo

# Esperar 10 seg mientras se crea correctamente el contenedor
sleep 10

# Copiar los archivos estaticos para posteriormente importar los datos a la DB
docker cp ./books.json mongodb:/tmp

# Ejecutar comando en el contenedor para importar los datos
docker exec mongodb mongoimport --db Library --collection Books --type json \
     --file ./tmp/books.json --jsonArray -u invitado -p invitado -h localhost \
    --port 27017 --authenticationDatabase=admin 

# Obtener IP del contenedor de la DB
ipAddress=$(docker inspect --format '{{ index .NetworkSettings.IPAddress }}' mongodb )

# Ejecutar contenedor para administrar nuestra DB, Se asigna la ip capturada anteriormente
docker run -d -e ME_CONFIG_MONGODB_SERVER=$ipAddress -e ME_CONFIG_MONGODB_ENABLE_ADMIN=true \
    -e ME_CONFIG_MONGODB_ADMINUSERNAME=invitado -e ME_CONFIG_MONGODB_ADMINPASSWORD=invitado \
    -p 8081:8081 --name mongo-expres mongo-express:0.54.0