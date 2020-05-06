#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=subrockmann/udacity_microservice:v1

# Step 2:  
# Authenticate & tag
export DOCKER_ID="subrockmann"
echo "Docker ID and Image: $dockerpath"
docker tag subrockmann/udacity_microservice:v1 $DOCKER_ID/udacity_microservice:v1

# Step 3:
# Push image to a docker repository
docker login
docker push $DOCKER_ID/udacity_microservice:v1 

