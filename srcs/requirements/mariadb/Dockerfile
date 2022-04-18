FROM debian:buster

# RUN adduser fcatinau --disabled-password --no-create-home --system --ingroup root

RUN apt update -y && apt install mariadb-server -y

# USER fcatinau

# COPY --chown=fcatinau:fcatinau  ./config/script.sh /var/.
COPY ./config/server.cnf /etc/mysql/mariadb.conf.d/server.cnf
COPY ./config/script.sh /var/.

# ENTRYPOINT ["sh", "/var/script.sh" ]
