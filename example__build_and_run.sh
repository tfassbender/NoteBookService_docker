#create port and password enviroment variables
export TOMCAT_EXTERNAL_PORT=<a_port_on_which_your_service_shall_be_visible_to_the_outside_world>
export MYSQL_DOCKER_ROOT_PASSWORD=<a_root_password>
export MYSQL_DOCKER_USER_PASSWORD=<a_user_password>

#make the logs reachable for everyone (because they are created by root, which can cause problems)
sudo chmod 777 logs/*

#run docker-compose
docker-compose build
docker-compose up

#unset the variables
unset TOMCAT_EXTERNAL_PORT
unset MYSQL_DOCKER_ROOT_PASSWORD
unset MYSQL_DOCKER_USER_PASSWORD
