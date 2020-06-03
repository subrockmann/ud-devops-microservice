#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=subrockmann/udacity_microservice:v1
# Step 2
# Run the Docker Hub container with kubernetes
sudo kubectl run my-app --image=subrockmann/udacity_microservice:v1 --port=80

# Step 3:
# List kubernetes pods
sudo kubectl get pods

# Step 4:
# Forward the container port to a host
echo "Please wait for 10 seconds for pod to come up"
sleep 10
sudo kubectl port-forward pod/my-app 8000:80
sudo kubectl logs --selector app=my-app

