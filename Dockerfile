FROM php:8.3-rc-apache
RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libzip-dev \
    libicu-dev \
    unzip
RUN docker-php-ext-configure intl
RUN docker-php-ext-install pdo pdo_mysql zip intl
