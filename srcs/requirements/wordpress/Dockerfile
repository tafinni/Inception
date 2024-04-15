FROM debian:bullseye

RUN apt update
RUN apt install -y php7.4 php-mysqli php-fpm curl sendmail

COPY ./conf/www.conf /etc/php/7.4/fpm/pool.d
COPY ./conf/wp-config.php /etc/php/7.4/fpm/pool.d

RUN echo b
COPY ./tools/setup.sh /
RUN chmod +x setup.sh

EXPOSE 9000

ENTRYPOINT ["bash", "setup.sh"]
