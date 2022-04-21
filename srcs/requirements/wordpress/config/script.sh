
wp-cli  core download --allow-root

rm -f /var/www/html/wp-config.php
cp /tmp/wp-config.php /var/www/html/.

chown -R www-data:www-data /var/www/html/


wp-cli core install --url="fcatinau.42.fr" --title="My website" --admin_user="fcatinau" \
    --admin_password="fcatinau_42" --admin_email="fcatinau@student.42.fr" --skip-email --allow-root

# wp-cli config create --dbname="wordpress" --dbuser="wordpress" --dbpass="2134tgefw456y*" --allow-root 

wp-cli user create fcatinau user@fcatinau.42.fr --role=author  --allow-root

exec service php7.3-fpm start
# exec php-fpm7.3 -F -R