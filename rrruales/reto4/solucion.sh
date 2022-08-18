#!/bin/bash

docker volume create static_content_apache

docker build . -t bootcamp_apache

docker run -d --name my_apache \
    -v static_content_apache:/usr/local/apache2/htdocs/ \
    -p 5050:80 bootcamp_apache