#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=kcsiri/kc-devops-app:1.1

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run kc-devops-app:1.1 --image=$dockerpath 

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward kc-devops-app:1.1 8000:80
