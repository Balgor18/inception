# cat << EOF > /var/conf.log
# CREATE DATABASE $DB_NAME;
# GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '$PASSWORD' WITH GRANT OPTION;
# SET PASSWORD FOR 'root'@'localhost'=PASSWORD('$PASSWORD') ;
# GRANT ALL ON *.* TO '$ADMIN_USER'@'%' IDENTIFIED BY '$ADMIN_PASSWORD';

# GRANT ALL ON $DB_NAME.* TO '$USER'@'%' IDENTIFIED BY '$WP_PASSWORD';
# FLUSH PRIVILEGES;
# exit
# EOF

cat << EOF > /var/conf.log
CREATE DATABASE IF NOT EXISTS wordpress;

GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '1R00tP4sword1*' WITH GRANT OPTION;
GRANT ALL ON *.* TO 'fcatinau'@'%' IDENTIFIED BY 'fcatinau_42';

CREATE USER IF NOT EXSITS 'wordpress'@'%' IDENTIFIED by '2134tgefw456y*s';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;
exit
EOF
# SET PASSWORD FOR 'root'@'localhost'=PASSWORD('1R00tP4sword1*') ;

# mysql -u root -p --skip-password < /var/conf.log
# mysql -u root -p --skip-password < /var/conf.log

mysqld --user=mysql --verbose=0 --skip-name-resolve --bootstrap --skip-networking=0 < /var/conf.log
mysqld --console --user=mysql --skip-name-resolve --skip-networking=0

exec service mysql start
# rm /var/conf.log
