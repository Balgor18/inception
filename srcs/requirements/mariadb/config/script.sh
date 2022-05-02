#!/bin/bash

# set -xve
# set -x

FILE=/var/lib/mysql/.db_create
if  [ ! -f "$FILE" ]
then
	service mysql start
	echo "Je creer la BDD"
	envsubst < /var/init.sql > /var/init_env.sql
	cat /var/init_env.sql | mysql
	service mysql stop
	touch /var/lib/mysql/.db_create
fi
echo "BDD deja creer"
service mysql start
# exec mysqld -umysql
# exec mariadb -u root < /var/init_env.sql
# exec mysqld -u mysql
