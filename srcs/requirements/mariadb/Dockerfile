FROM debian:bullseye

RUN apt-get update -y && apt-get install mariadb-server -y --fix-broken --fix-missing

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
RUN chmod 644 /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/setup.sh /
RUN chmod +x setup.sh

EXPOSE 3306

ENTRYPOINT ["bash", "setup.sh"]

