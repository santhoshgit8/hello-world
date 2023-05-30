# Pull base image 
#From tomcat:8-jre8 
# Maintainer 
#MAINTAINER "valaxytech@gmail.com" 
#COPY ./webapp/target/webapp.war /usr/local/tomcat/webapps
FROM openjdk:11-jre-slim
ADD ./webapp/target/webapp.war /usr/src/webapp.war
WORKDIR usr/src
ENTRYPOINT ["java","-jar", "webapp.war"]
