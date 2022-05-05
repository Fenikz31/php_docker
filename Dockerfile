FROM php:7.3-apache

# Install the mysqli extension inside the container
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN a2enmod rewrite

WORKDIR /var/www/html