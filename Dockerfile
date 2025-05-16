FROM php:8.3-apache

RUN apt-get update && apt-get install -y \
    libbz2-dev \
    libcurl4-openssl-dev \
    libonig-dev \
    libzip-dev \
    libxml2-dev \
    libssl-dev \
    libsqlite3-dev \
    libreadline-dev \
    libjpeg-dev \
    libpng-dev \
    zlib1g-dev \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Configurer et installer les extensions PHP
RUN docker-php-ext-configure zip && \
    docker-php-ext-install \
        pdo \
        pdo_mysql \
        mysqli \
        opcache \
        bz2 \
        sockets \
        pcntl \
        gettext \
        exif \
        calendar

RUN docker-php-ext-install \
        curl \
        fileinfo \
        mbstring

RUN docker-php-ext-install \
        iconv \
        dom \
        xml \
        simplexml
        

RUN docker-php-ext-install zip


RUN a2enmod rewrite

# Définir le répertoire de travail
WORKDIR /var/www/html

# Ajouter Composer depuis l'image officielle
COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
