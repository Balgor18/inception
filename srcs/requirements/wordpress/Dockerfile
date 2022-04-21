FROM debian:buster

RUN apt update -y && apt install curl mariadb-client php php7.3 php7.3-fpm php7.3-mysql php-common php7.3-cli php7.3-common php7.3-json php7.3-opcache php7.3-readline php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y
RUN mkdir -p /var/www/html && cd /var/www/html 

COPY ./config/php-fpm.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./config/script.sh /var/.
COPY ./config/wp-config.php /tmp/.

RUN mkdir -p /var/run && mkdir /run/php
RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && php wp-cli.phar --info && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp-cli

WORKDIR /var/www/html

CMD ["sh", "/var/script.sh"]