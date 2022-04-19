
mkdir /etc/nginx/ssl/
cd /etc/nginx/ssl/
openssl req -sha512 -x509 -days 365 -nodes -out fcatinau.pem -keyout fcatinau.key -subj "/C=FR/ST=France/L=Paris/O=Me/OU=42Paris/CN=fcatinau/emailAddress=fcatinau@student.42.fr"
cd /

rm -f /etc/nginx/sites-enabled/default

ln -s /etc/nginx/sites-available/fcatinau_config /etc/nginx/sites-enabled/fcatinau_config

service nginx start
