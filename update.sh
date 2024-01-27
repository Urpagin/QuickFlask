#!/bin/bash

container_name=thing
container_port=29344

# Check if the container exists
container_exists=$(sudo docker ps -a | grep $container_name)

if sudo docker inspect $container_name &> /dev/null; then
    echo "Removing container: $container_name"
    sudo docker rm -f $container_name
else
    echo "Container $container_name does not exist, skipping removal."
fi


# Build the new image
sudo docker build -t $container_name:latest . || { echo "Build failed"; exit 1; }
# Run the new container instance
sudo docker run --name $container_name -d -p $container_port:8000 --restart=unless-stopped $container_name:latest || { echo "Failed to run container"; exit 1; }

