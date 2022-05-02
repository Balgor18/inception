
envsubst < /var/init.sql > /var/init_env.sql


# service --status-all
# mysqladmin -u root -p'' password '1R00tP4ssword1*'

# mysqld --user=mysql --verbose=0 --skip-name-resolve --bootstrap --skip-networking=0 < /var/init_env.sql
service mysql start
exec mariadb -u root "-p" < /var/init_env.sql
