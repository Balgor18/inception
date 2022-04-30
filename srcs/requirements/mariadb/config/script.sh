
envsubst < /var/init.sql > /var/init_env.sql

service mysql start

service --status-all
# mysqladmin -u root -p'' password '1R00tP4ssword1*'

exec mariadb -u root < /var/init_env.sql
