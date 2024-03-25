#!/bin/bash

if [ $1 = "f" ]
then
    docker build -t inner_img home/.
    docker run -d --name inner_container inner_img
fi

if [ $1 = "i" ]
    then
    docker run -d --name inner_container $2
fi