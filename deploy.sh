#!/bin/bash

# run Docker container
docker run -d -it --rm -p 8088:8080 --name pipeline kafet:latest


