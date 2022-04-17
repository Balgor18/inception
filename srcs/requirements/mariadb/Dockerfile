FROM debian:buster

RUN apt update -y
RUN apt install mariadb-server -y
# RUN apt-get install mysql-server -y

COPY ./config/script.sh /var/.

# ENTRYPOINT ["sh", "/var/script.sh" ]
