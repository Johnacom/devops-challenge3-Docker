#!/usr/bin

docker volume create static_content_apache

docker build -t my-apache2 .

docker run -dit --name my_apache -p 5050:80 my-apache2
