FROM ubuntu

RUN apt update

RUN apt install apache2 -y

RUN rm -ifr /var/www/html/*

ADD . /var/www/html/

ENTRYPOINT apachectl -D FOREGROUND
