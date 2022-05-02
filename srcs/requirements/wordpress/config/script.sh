
until mysqladmin -hmariadb -uroot -"p1R00tP4ssword1*" ping && \
			mariadb -hmariadb -uroot -p"1R00tP4ssword1*" -e "SHOW DATABASES;" | grep wordpress; do
	sleep 2
	echo "waiting to connect..."
done
echo "successfuly connected to db"

if ! wp core --allow-root is-installed; then
	rm -rf /var/www/html/wp-config.php
	wp config create --dbname=$DB_NAME --dbuser="wordpress" --dbpass=$WP_PASSWORD --dbhost="mariadb" --path="/var/www/html/" --allow-root --skip-check
	cat /var/www/html/wp_config.php
	wp core install --url="fcatinau.42.fr" --title="fcatinau site" --admin_user="fcatinau" --admin_password="fcatinau_42" --admin_email="fcatinau@student.42.fr" --path="/var/www/html/" --allow-root
fi

exec service php7.3-fpm start
