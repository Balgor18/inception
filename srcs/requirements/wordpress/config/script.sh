
sleep 3

if ! wp core --allow-root is-installed; then
	wp core install --allow-root --url="fcatinau.42.fr" --title="My website" --admin_user="fcatinau" --admin_password="fcatinau_42" --admin_email="fcatinau@student.42.fr" --skip-email
	wp user create fcatinau user@fcatinau.42.fr --role=author  --allow-root
fi
service php7.3-fpm start
