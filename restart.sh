#!/bin/bash

# store the bioregistry id
BIOREGISTRY_CONTAINER_ID=$(docker ps --filter "name=bioregistry" -q)

# Stop and remove the old container taking advantage
#  of the fact that it's named specifically
docker stop $BIOREGISTRY_CONTAINER_ID
docker rm $BIOREGISTRY_CONTAINER_ID

# Pull the latest
docker pull biopragmatics/bioregistry:latest

# Run the start script
docker run -id --name bioregistry -p 8766:8766 biopragmatics/bioregistry:latest
