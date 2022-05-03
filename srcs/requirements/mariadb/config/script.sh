#!/bin/bash

# set -xve
# set -x

FILE=/var/lib/mysql/.db_create
if  [ ! -f "$FILE" ]
then
	echo "Je creer la BDD"
	envsubst < /var/init.sql > /var/init_env.sql
	service mysql start
	mysqld -D mysql < /var/init_env.sql
	touch /var/lib/mysql/.db_create
	service mysql stop | echo -n ""
fi
echo "BDD deja creer"
exec mysqld_safe
# exec service mysqld start
