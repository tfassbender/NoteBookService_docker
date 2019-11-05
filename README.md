# Java webservice mysql example
A basic example on using docker-compose to build a tomcat and a mysql docker so the webservice (on the tomcat docker) can store and load simple texts in a database.

# Steps
* Install [Docker](https://docs.docker.com/install/).
* Clone this repository -$ git clone https://github.com/tfassbender/tfassbender/NoteBookService_docker.git
* cd NoteBookService_docker
* Add your passwords and the port you want your service to use to the file example__build_and_run.sh
* Run example__build_and_run.sh (calls 'docker-compose build' and 'docker-compose up')
* http://localhost:8080 (or any other port you chose in the file example__build_and_run.sh)
* http://localhost:8080/NoteBookService/notebook/notebook/hello (for a testing hello message)
* http://localhost:8080/NoteBookService/notebook/notebook/db_test (to test the database connection and the service)
* http://localhost:8080/NoteBookService/notebook/notebook/ (using a HTTP POST request to add, get, update and delete notes in the database; see linked projects for more information)

# Links
For the java sourcecode (maven-project) see: [NoteBookService](https://github.com/tfassbender/NoteBookService)
