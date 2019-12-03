# Java NoteBookService - Docker
A basic example on using docker-compose to build a tomcat and a mysql docker so the webservice (on the tomcat docker) can store notes

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

# Other usefull stuff

### Inspecting the database

To inspect the database (while the docker is running) run `docker exec -it notebook_service_docker_mysql_1 mysql -uroot -p` and enter the root password from `example__build_and_run.sh`

Usefull commands on mysql commandline:
* show databases;
* use <database_name>;
* show tables;

### Tomcat logs

Logs from the tomcat docker are placed in `./logs` (created as volume in docker-compose.ylm)

### Bash on a running docker

Run `docker ps` to see the running docker containers.  
Afterwards run `docker exec -it <the_name_of_the_container_you_want_to_enter> /bin/bash`

### IOError: Can not read file in context: <path_to_docker_dir>/logs/notebook_service.log

File is created by root. Just change permissions to 777 or delete to fix the problem.


