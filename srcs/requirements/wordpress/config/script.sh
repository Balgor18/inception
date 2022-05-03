
FILE=/var/www/html/.exist

if  [ ! -f "$FILE" ]; then
	echo "Create config"
	rm -rf /var/www/html/wp-config.php
	wp config create --dbname=$DB_NAME --dbuser="wordpress" --dbpass=$WP_PASSWORD --dbhost="mariadb" --path="/var/www/html/" --allow-root --skip-check
	# wp core install --url="fcatinau.42.fr" --title="fcatinau site" --admin_user="fcatinau" --admin_password="fcatinau_42" --admin_email="fcatinau@student.42.fr" --path="/var/www/html/" --allow-root
	wp core install --url="localhost" --title="fcatinau site" --admin_user="fcatinau" --admin_password="fcatinau_42" --admin_email="fcatinau@student.42.fr" --path="/var/www/html/" --allow-root
	touch /var/www/html/.exist
fi
echo "Config already done"
exec php-fpm7.3 --nodaemonize
# tail -f /dev/null
