#!/bin/bash

# Store the container's hash
BIOREGISTRY_CONTAINER_ID=$(docker ps --filter "name=bioregistry" -aq)

# Stop and remove the old container, taking advantage of the fact that it's named specifically
if [ -n "BIOREGISTRY_CONTAINER_ID" ]; then
  docker stop $BIOREGISTRY_CONTAINER_ID
  docker rm $BIOREGISTRY_CONTAINER_ID
fi

# Pull the latest
docker pull biopragmatics/bioregistry:latest

# Run the start script
# Add -d for detach
docker run -i --name bioregistry -p 8766:8766 biopragmatics/bioregistry:latest
