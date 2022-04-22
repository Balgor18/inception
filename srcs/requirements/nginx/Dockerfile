FROM debian:buster

RUN apt update -y && apt install nginx -y && apt install openssl -y

RUN mkdir -p /etc/nginx/ssl/ && openssl req -newkey rsa:2048 -x509 -days 365 -nodes -out /etc/nginx/ssl/localhost.pem -keyout /etc/nginx/ssl/localhost.key -subj "/C=FR/ST=France/L=Paris/O=Me/OU=42Paris/CN=fcatinau/emailAddress=fcatinau@student.42.fr"
COPY ./config/fcatinau_config /etc/nginx/sites-available/default.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
