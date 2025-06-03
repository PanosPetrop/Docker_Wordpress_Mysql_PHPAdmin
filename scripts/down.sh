#!/bin/bash



# run the containers
cd ../mysql && docker-compose down  &&
cd ../wordpress && docker-compose down &&
cd ../phpmyadmin && docker-compose down &&

#delete network

docker network rm vlab_network && 
echo "****************************
Containers and vlab network deleted sucessfully
*****************************" &&
 exit 0


exit 1