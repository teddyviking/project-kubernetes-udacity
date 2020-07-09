#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

DOCKER_ID_USER="teddyviking"
REPOSITORY="kubernetes_project"
dockerpath=$DOCKER_ID_USER/$REPOSITORY

kubectl run kubernetes-project --image=$dockerpath --port=80

kubectl get pods

kubectl port-forward kubernetes-project 8000:80
