#!/bin/bash

# remove container and image before build
docker stop pipeline
docker rmi kafet:latest

# build Docker images
docker build -t kafet:latest .
