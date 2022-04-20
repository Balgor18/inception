FROM debian:buster

EXPOSE 3306

RUN apt update -y && apt install mariadb-server mariadb-client -y

COPY ./config/server.cnf /etc/mysql/mariadb.conf.d/server.cnf
COPY ./config/script.sh /var/.

CMD ["sh", "/var/script.sh" ]
