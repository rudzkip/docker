FROM php:7.2-fpm-alpine3.12

RUN docker-php-ext-install mysqli &&\
    docker-php-ext-enable mysqli

COPY ./docker/php/php-fpm.conf /usr/local/etc/php-fpm.d/www.conf

COPY . /app

VOLUME ["/app"]
