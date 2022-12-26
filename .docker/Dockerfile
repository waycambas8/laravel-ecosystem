FROM php:8.0-fpm

COPY .docker/extensions /builds/extensions

RUN apt-get update && apt-get install -y \
  libfreetype6-dev \
  libjpeg62-turbo-dev \
  libpng-dev \
  unzip \
  libxml2-dev \
  libmemcached-dev \
  libmemcached11 \
  librdkafka-dev \
  build-essential \
  libmcrypt-dev \
  libreadline-dev \
  openssl \
  libcurl4-openssl-dev \
  libssl-dev \
  && docker-php-ext-install -j$(nproc) iconv \
  && docker-php-ext-install -j$(nproc) gd \
  && mv /builds/extensions/composer.phar /usr/local/bin/composer

RUN chmod +x /usr/local/bin/composer

RUN apt-get install -y libzip-dev zlib1g-dev \
  && docker-php-ext-install zip

RUN pecl install mongodb \
    && docker-php-ext-enable mongodb \
    &&  pecl config-set php_ini "${PHP_INI_DIR}/php.ini"

RUN pecl install rdkafka \
    && docker-php-ext-enable rdkafka \
    &&  pecl config-set php_ini "${PHP_INI_DIR}/php.ini"

RUN pecl install -o -f redis \
    &&  rm -rf /tmp/pear \
    && docker-php-ext-enable redis \
    &&  pecl config-set php_ini "${PHP_INI_DIR}/php.ini"

RUN docker-php-ext-install intl

WORKDIR /usr/share/app

ENV OPENSSL_CONF='/etc/ssl/'
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN apt-get install -y nodejs
RUN apt-get install -y libfontconfig
RUN echo "$OPENSSL_CONF"

RUN docker-php-ext-install \
  pdo \
  pdo_mysql \
  mysqli \
  dom \
  session

# COPY .docker/auth.json /root/.composer/auth.json

EXPOSE 9080