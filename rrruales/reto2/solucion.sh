#!/bin/bash

# Ejecutar contenedor con iamgen mariadb, estableciendo variables de entorno 
# y exponiendo de manera correcta el puerto

docker run --name bbdd \
--env MARIADB_ROOT_PASSWORD=root \
--env MARIADB_DATABASE=prueba \
--env MARIADB_USER=invitado \
--env MARIADB_PASSWORD=invitado \
-p 3306:3306 mariadb