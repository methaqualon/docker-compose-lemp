FROM php:8-fpm

RUN apt-get update && \
    apt-get install -y git zip

RUN curl --silent --show-error https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

# Uncomment to have mysqli extension installed and enabled
# RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
# don't forget that mysqli is depreacted and you should use pdo

# pdo_mysql driver installation for php
RUN docker-php-ext-install pdo_mysql && docker-php-ext-enable pdo_mysql

# feel free to add another extensions here

# php frameworks like laravel need nodejs and npm for some operations, you can comment it if you need just lemp+pma
RUN apt-get install -y nodejs npm
