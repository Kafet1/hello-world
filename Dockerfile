# Pull base image 
From tomcat:9.0 

RUN rm -rf /usr/local/tomcat/webapps/*
RUN cp ./webapp.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
WORKDIR /usr/local/tomcat/
