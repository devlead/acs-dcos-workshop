#!/bin/sh

#run the image in a new container
docker run -p 8080:8080 -d --name simple-web simple-web
