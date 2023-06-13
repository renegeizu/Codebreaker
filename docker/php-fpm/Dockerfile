FROM php:8.1.20-fpm

# Install software
RUN apt-get update && apt-get install -yq git vim zip && \
    pecl install xdebug && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Configure PHP
COPY php.ini /usr/local/etc/php/conf.d/

WORKDIR /app
VOLUME /app

EXPOSE 9000

CMD ["php-fpm", "-F"]