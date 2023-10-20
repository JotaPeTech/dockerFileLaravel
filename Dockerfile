FROM php:7.4-cli

WORKDIR /var/www

#PREPARAÇÃO DO AMBIENTE
RUN apt-get update && \
    apt-get install libzip-dev -y && \
    docker-php-ext-install zip

#INSTALAÇÃO DO COMPOSER SEM VALIDAÇÃO DO HASH  https://getcomposer.org/download/
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php composer-setup.php && \
    php -r "unlink('composer-setup.php');"

#CRIANDO PROJETO LARAVEL
RUN php composer.phar create-project laravel/laravel "laravel"

#SUBINDO SERVIDOR
ENTRYPOINT [ "php", "laravel/artisan", "serve" ]
CMD ["--host=0.0.0.0", "--port=80"]
