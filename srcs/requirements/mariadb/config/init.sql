-- Create ${DB_NAME}
CREATE DATABASE IF NOT EXISTS ${DB_NAME};
-- Create new user wordpress
CREATE USER IF NOT EXISTS 'wordpress'@'%' IDENTIFIED by '${WP_PASSWORD}';
-- Give access to all database wordpress to the user 'wordpress'
GRANT ALL PRIVILEGES ON ${DB_NAME}.* TO 'wordpress'@'%' WITH GRANT OPTION;
-- Set up root password
SET PASSWORD FOR 'root'@'localhost'=PASSWORD('${PASSWORD}');
FLUSH PRIVILEGES;
