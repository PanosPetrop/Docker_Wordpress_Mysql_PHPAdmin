#!/bin/bash

# create the network 

docker network inspect "vlab_network"
[ $? -ne 0 ] && docker network create "vlab_network"

# run the containers
cd ../mysql && docker-compose up -d &&
cd ../wordpress && docker-compose up -d &&
cd ../phpmyadmin && docker-compose up -d &&
echo "****************************
Containers and vlab network are running sucessfully
*****************************" && exit 0


exit 1