# Build Stage
FROM maven:3-openjdk-11 AS maven_build
COPY . /app/
WORKDIR /app/
RUN mvn install clean package

# Deploy Stage 
FROM tomcat:9.0 
RUN apt-get update -y
RUN rm -rf /usr/local/tomcat/webapps/*
COPY --from=maven_build /app/webapp/target/webapp.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]
EXPOSE 8080
WORKDIR /usr/local/tomcat/
