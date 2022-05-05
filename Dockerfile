FROM php:7.3-apache

RUN echo 'ServerName localhost' >> /etc/apache2/apache2.conf

RUN service apache2 restart
# Install the mysqli extension inside the container
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN a2enmod rewrite

WORKDIR /var/www/html