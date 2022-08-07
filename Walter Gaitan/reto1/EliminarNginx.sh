#!/bin/bash

docker stop servidor_web
docker ps
docker rm servidor_web
docker ps -a