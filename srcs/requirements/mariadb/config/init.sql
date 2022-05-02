-- Create ${DB_NAME}
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
-- Set up root password
SET PASSWORD FOR 'root'@'localhost'=PASSWORD('${PASSWORD}');
-- Give all access to root
GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '${PASSWORD}' WITH GRANT OPTION;
-- Create new user wordpress
CREATE USER IF NOT EXISTS 'wordpress'@'%' IDENTIFIED by '${WP_PASSWORD}';
-- Give access to all database wordpress to the user 'wordpress'
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO 'wordpress'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;

-- CREATE DATABASE IF NOT EXISTS wordpress;
-- SET PASSWORD FOR 'root'@'localhost'=PASSWORD('1R00tP4ssword1*');
-- GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY '1R00tP4ssword1*' WITH GRANT OPTION;
-- CREATE USER IF NOT EXISTS 'wordpress'@'%' IDENTIFIED by '2134tgefw456y';
-- GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'%' WITH GRANT OPTION;
-- FLUSH PRIVILEGES;
