#!/bin/bash

# remove container and image before build
docker stop pipeline
docker rmi kafet/tomcat:v1

# maven build
mvn install clean package

# copy war file
cp /var/lib/jenkins/workspace/ci-maven3/webapp/target/webapp.war .
cp /var/lib/jenkins/workspace/ci-maven3/webapp/target/webapp.war /opt/tomcat/webapps
cp /var/lib/jenkins/workspace/ci-maven3/webapp/target/webapp.war /home/kafet

# build Docker images
docker build -t kafet/tomcat:v1 .

