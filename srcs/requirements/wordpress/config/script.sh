
sleep 3

if ! wp core --allow-root is-installed; then
	rm -f /var/www/html/wp-config.php
	echo "Jai rm le fichier wp-config"
	envsubst < /tmp/wp-config.php > /var/www/html/wp-config.php
	sed $'s/= \'wp_\';/$table_prefix  = \'wp_\';/g' /var/www/html/wp-config.php
	echo "J'envsub"
	cat /var/www/html/wp-config.php

	wp core install --allow-root --url="fcatinau.42.fr" --title="My website" --admin_user="fcatinau" --admin_password="fcatinau_42" --admin_email="fcatinau@student.42.fr" --skip-email
	echo "Time for wp"
	wp user create fcatinau user@fcatinau.42.fr --role=author  --allow-root
	echo "User creation "
fi
exec service php7.3-fpm start
