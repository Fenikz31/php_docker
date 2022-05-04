FROM php:7.3-apache

WORKDIR /var/www/html

# Install the mysqli extension inside the container
RUN docker-php-ext-install mysqli pdo pdo_mysql