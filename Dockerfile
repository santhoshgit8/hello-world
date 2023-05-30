#Pull base image 
From tomcat:8-jre8 
COPY ./webapp/target/webapp.jar /usr/local/tomcat/webapps

