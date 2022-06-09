#!/bin/bash

# maven build
mvn install clean package

# copy war file
cp /var/lib/jenkins/workspace/ci-maven3/webapp/target/webapp.war .

# build Docker images
docker build -t kafet/tomcat:v1 .

