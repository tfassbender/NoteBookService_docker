# Java webservice mysql example
A basic example on using docker-compose to build a tomcat and a mysql docker so the webservice (on the tomcat docker) can store and load simple texts in a database.

# Steps
* Install [Docker](https://docs.docker.com/install/).
* Clone this repository -$ git clone https://github.com/tfassbender/java_ws_rest_mysql_example.git
* cd java_ws_rest_mysql_example
* docker-compose build
* docker-compose up
* http://localhost:8080
* http://localhost:8080/WsDatabaseTest/db_test/db_test/hello (for a testing hello message)
* http://localhost:8080/WsDatabaseTest/db_test/db_test/add_entry/any_text_you_want_to_enter (for adding an entry text to the database)
* http://localhost:8080/WsDatabaseTest/db_test/db_test/get_entry/the_id_of_the_entry_you_want_to_read (for reading entries from the database)

# POST requests
HTTP POST requests can be tested using the client jar console application.  
The POST request URL is http://localhost:8080/WsDatabaseTest/db_test/db_test/

# Links
For the java sourcecode (maven-project) see: [java_ws_rest_maven_project_example](https://github.com/tfassbender/java_ws_rest_mysql_maven_project_example)
