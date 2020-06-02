#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=jorgelink6/apiml

# Step 2:  
# Authenticate & tag
docker login --username jorgelink6 --password testpassword
docker tag apiml:latest $dockerpath:1.2
echo "Docker ID and Image: $dockerpath"

# Step 3:
# Push image to a docker repository
docker push $dockerpath:1.2
