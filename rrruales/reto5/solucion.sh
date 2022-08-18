#!/bin/bash

docker volume create static_content_node

docker build . -t bootcamp_node

docker tag bootcamp_node rolo96/bootcamp_node:v1.0.0

docker login -u rolo96 -p 'password'

docker push rolo96/bootcamp_node:v1.0.0


docker run -d --name my_node \
    -v static_content_node:/tmp/project/hello-bootcamp \
    -p 4000:4000 bootcamp_node

