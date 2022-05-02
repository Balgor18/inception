#!/bin/bash

FILE=/var/lib/mysql/.db_create
if  [ ! -f "$FILE" ]
then
	service mysql start
	envsubst < /var/init.sql > /var/init_env.sql
	cat /var/init_env.sql | mysql
	service mysql stop
	touch /var/lib/mysql/.db_create
fi
# exec mariadb -u root < /var/init_env.sql
exec mysqld -u mysql
