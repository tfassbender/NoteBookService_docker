FROM tomcat:9.0-alpine
LABEL maintainer="tobias-fassbender@gmx.de"

ADD NoteBookService.war /usr/local/tomcat/webapps/
ADD passwords.properties /usr/local/tomcat/lib/

EXPOSE 8080
CMD ["catalina.sh", "run"]
