#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

DOCKER_ID_USER="teddyviking"
REPOSITORY="kubernetes_project"

dockerpath=$DOCKER_ID_USER/$REPOSITORY

echo "Docker ID and Image: $dockerpath"
docker login
docker tag $REPOSITORY $DOCKER_ID_USER/$REPOSITORY 

# Step 3:
# Push image to a docker repository
docker push $DOCKER_ID_USER/$REPOSITORY  
