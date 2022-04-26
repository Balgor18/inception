cat << EOF > /var/conf.log
CREATE DATABASE $DB_NAME;
GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '$PASSWORD' WITH GRANT OPTION;
SET PASSWORD FOR 'root'@'localhost'=PASSWORD('$PASSWORD') ;
GRANT ALL ON *.* TO '$ADMIN_USER'@'%' IDENTIFIED BY '$ADMIN_PASSWORD';

GRANT ALL ON $DB_NAME.* TO '$USER'@'%' IDENTIFIED BY '$WP_PASSWORD';
FLUSH PRIVILEGES;
exit
EOF

cat << EOF > info.sql
CREATE DATABASE IF NOT EXISTS wordpress;
SET PASSWORD FOR 'root'@'localhost'=PASSWORD('1R00tP4sword1*');
GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '1R00tP4sword1*' WITH GRANT OPTION;
CREATE USER IF NOT EXISTS 'wordpress'@'%' IDENTIFIED by '2134tgefw456y*s';
GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;
EOF

service mysql start && mysql "-p1R00tP4sword1*" < info.sql

# rm /var/conf.log
