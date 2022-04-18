cat << EOF > /var/conf.log
CREATE DATABASE $DB_NAME;
GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '$PASSWORD' WITH GRANT OPTION;
SET PASSWORD FOR 'root'@'localhost'=PASSWORD('$PASSWORD') ;
GRANT ALL ON *.* TO '$ADMIN_USER'@'%' IDENTIFIED BY '$ADMIN_PASSWORD';
CREATE DATABASE IF NOT EXISTS wordpress;
GRANT ALL ON \`$DB_NAME\`.* TO '$USER'@'%' IDENTIFIED BY '$WP_PASSWORD';
FLUSH PRIVILEGES;
exit
EOF

# mysql -u root -p --skip-password < /var/conf.log
# mysql -u root -p --skip-password < /var/conf.log

mysqld --user=mysql --verbose=0 --skip-name-resolve --bootstrap --skip-networking=0 < /var/conf.log
exec mysqld --console --user=mysql --skip-name-resolve --skip-networking=0 $@

# service mysql start
# rm /var/conf.log
