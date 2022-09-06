#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=leefrancis2020/myproject4


# Step 2
# Run the Docker Hub container with kubernetes
kubectl run myproject4\
	--image=$dockerpath\
	--port=80 --labels app=myproject4



# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
kubectl port-forward myproject4 8000:80

