FROM debian:buster

RUN apt update -y
RUN apt install mariadb-server -y

COPY script.sh /var/.

# ENTRYPOINT [ "executable" ]
