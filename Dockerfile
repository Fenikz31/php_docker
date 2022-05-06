FROM php:7.3-apache

RUN echo 'ServerName localhost' >> /etc/apache2/apache2.conf

# Install the mysqli extension inside the container
RUN docker-php-ext-install mysqli pdo pdo_mysql && \
    a2enmod rewrite && \
    service apache2 restart

WORKDIR /var/www/html