#!/bin/bash

# run Docker container
docker run -d -it --rm -p 8888:8080 --name pipeline kafet/tomcat:v1


