#!/bin/bash

# docker pull ubuntu
docker build -t inner_img home/.
docker run -it --name inner_container inner_img