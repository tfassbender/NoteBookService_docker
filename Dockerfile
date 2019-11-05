FROM tomcat:9.0-alpine
LABEL maintainer="tobias.fassbender@gmx.de"

ADD NoteBookService.war /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
