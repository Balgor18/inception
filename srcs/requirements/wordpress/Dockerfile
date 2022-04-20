FROM debian:buster

RUN apt update -y && apt install curl mariadb-client php php7.3 php7.3-cli php7.3-fpm php7.3-json php7.3-pdo php7.3-mysql php7.3-zip php7.3-gd  php7.3-mbstring php7.3-curl php7.3-xml php7.3-bcmath php7.3-json -y
RUN mkdir -p /var/www/html && cd /var/www/html 

COPY ./config/php-fpm.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./config/script.sh /var/.
COPY ./config/wp-config.php /tmp/.

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && php wp-cli.phar --info && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp-cli

CMD ["sh", "/var/script.sh"]