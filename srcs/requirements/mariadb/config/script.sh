# cat << EOF > info.sql
# CREATE DATABASE IF NOT EXISTS $DB_NAME;
# SET PASSWORD FOR 'root'@'localhost'=PASSWORD('$PASSWORD');
# GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '$PASSWORD' WITH GRANT OPTION;
# CREATE USER IF NOT EXISTS '$USER'@'%' IDENTIFIED by '$USER_PASSWORD';
# GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$USER'@'%' WITH GRANT OPTION;
# FLUSH PRIVILEGES;
# EOF

# cat << EOF > /var/info.sql
# CREATE DATABASE IF NOT EXISTS wordpress;
# SET PASSWORD FOR 'root'@'localhost'=PASSWORD('1R00tP4sword1*');
# GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '1R00tP4sword1*' WITH GRANT OPTION;
# CREATE USER IF NOT EXISTS 'wordpress'@'%' IDENTIFIED by '2134tgefw456y*';
# GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%' WITH GRANT OPTION;
# FLUSH PRIVILEGES;
# EOF

# mysqld --user=mysql --skip-name-resolve --bootstrap --skip-networking=0 < /var/info.sql
mysql -h "localhost" -u "root" "-p1R00tP4sword1*" "wordpress" < /var/info.sql
service mysql start
#&& mysql < info.sql

# rm /var/conf.log
