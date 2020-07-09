#!/usr/bin/env bash

docker build --tag=teddyviking/kubernetes_project .

docker image ls

docker run  -p 8000:80 teddyviking/kubernetes_project
