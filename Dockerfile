FROM php:7.2-apache
RUN mkdir -p /var/www/html
COPY . /var/www/html/
WORKDIR /var/www/html
RUN docker-php-ext-install -j$(nproc) mysqli
RUN apt-get -y upgrade
RUN apt-get -y update
RUN apt-get -y install vim
