
service mysql start

cat << EOF > /var/conf.log
GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'password' WITH GRANT OPTION;
CREATE DATABASE IF NOT EXISTS wordpress;
FLUSH PRIVILEGES;
exit
EOF

mysql -u root -p < /var/conf.log

rm /var/conf.log
