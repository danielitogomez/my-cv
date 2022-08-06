#!/bin/bash

docker build -t web-cv-page .
docker rm -f $(docker ps | grep -i "web-cv-page" | awk '{print $1}')
docker run -it --rm -d -p 8080:80 --name web-cv-page web-cv-page