ARG PHP_VERSION=8.0
FROM php:${PHP_VERSION}-cli

RUN apt-get update && apt-get install -y \
        git \
        libzip-dev \
        zip
RUN docker-php-ext-install zip
RUN apt-get clean

COPY --from=composer:2.0 /usr/bin/composer /usr/local/bin/composer
