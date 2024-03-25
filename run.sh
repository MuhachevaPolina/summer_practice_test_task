#!/bin/bash

docker run --privileged -d --name outer_container docker:dind # /bin/sh
docker cp Dockerfile outer_container:/home/Dockerfile
docker cp inner_run.sh outer_container:/home/inner_run.sh
docker exec -ti outer_container sh -c "echo "hi""
docker exec -ti outer_container sh -c "chmod 777 /home/inner_run.sh"
docker exec -it outer_container /bin/sh
# docker exec inner_container echo "hi"
# docker exec -t outer_container sh -c "sh /home/inner_run.sh"
