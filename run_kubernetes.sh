#!/usr/bin/env bash

# Step 1:
# This is your Docker ID/path
dockerpath="valodagreat/valmicroservicework"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run valmicroservicework --image=$dockerpath --port=80 --labels app=valmicroservicework

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward valmicroservicework 8000:80