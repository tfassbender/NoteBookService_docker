FROM tomcat:9.0-alpine
LABEL maintainer="deepak@softwareyoga.com"

#ADD sample.war /usr/local/tomcat/webapps/
ADD WsDatabaseTest.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
