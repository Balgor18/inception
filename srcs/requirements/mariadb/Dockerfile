FROM debian:buster

RUN apt update -y && apt install mariadb-server mariadb-client gettext-base -y

COPY ./config/server.cnf /etc/mysql/mariadb.conf.d/server.cnf
COPY ./config/script.sh /var/.
COPY ./config/init.sql /var/.

# CMD ["sh", "/var/script.sh" ]
