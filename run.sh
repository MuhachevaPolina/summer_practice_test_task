#!/bin/bash

docker run --privileged -d --name outer_container docker:dind

if [ -n $1 ] 
then
    docker cp Dockerfile outer_container:/home/Dockerfile
fi

docker cp inner_run.sh outer_container:/home/inner_run.sh
docker exec -it outer_container /bin/sh
