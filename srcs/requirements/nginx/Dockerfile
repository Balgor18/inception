FROM debian:buster

RUN apt update -y && apt install nginx -y && apt install openssl -y

COPY ./config/fcatinau_config /etc/nginx/sites-available/.
COPY ./config/script.sh /var/.

EXPOSE 443
ENTRYPOINT ["sh", "/var/script.sh" ]
