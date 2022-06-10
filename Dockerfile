# Pull base image 
FROM tomcat:9.0 

RUN apt-get update -y
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./webapp.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
EXPOSE 8080
WORKDIR /usr/local/tomcat/
