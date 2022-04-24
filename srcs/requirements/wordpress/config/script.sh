
sleep 3

wp-cli core download --allow-root

rm -f /var/www/html/wp-config.php
cp /tmp/wp-config.php /var/www/html/.

# chown -R www-data:www-data /var/www/html/

until mysqladmin -hmariadb -ufcatinau -pfcatinau_42 ping && \
         mariadb -hmariadb -ufcatinau -pfcatinau_42 -e "SHOW DATABASES;" | grep wordpress; do
    sleep 2
    echo "waiting to connect..."
done
echo "successfuly connected to db"

wp-cli core install --allow-root --url="fcatinau.42.fr" --title="My website" --admin_user="fcatinau" --admin_password="fcatinau_42" --admin_email="fcatinau@student.42.fr" --skip-email

wp-cli user create fcatinau user@fcatinau.42.fr --role=author  --allow-root

exec service php7.3-fpm start
