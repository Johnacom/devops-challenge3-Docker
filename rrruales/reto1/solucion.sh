#!/bin/bash

#Creacion de contenedor
docker run -d --name servidor_web -p 8181:80 nginx

#Listar contenedores en modo run
docker ps

#Listar images en nuestro registro local
docker images

#Detener un contenedor (indicar ID o nombre de contenedor)
docker stop servidor_web

#Eliminar un contenedor (indicar ID o nombre de contenedor)
docker rm servidor_web

#Listar contenedores en todos los estados
docker ps -a