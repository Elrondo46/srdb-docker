FROM php:7.0-fpm

RUN apt-get update; apt-get install -y unzip
RUN docker-php-ext-install mysqli
RUN curl -o srdb.zip -L https://github.com/interconnectit/Search-Replace-DB/archive/3.1.zip; \
    unzip srdb.zip; \
    rm srdb.zip

WORKDIR /var/www/html/Search-Replace-DB-3.1

CMD [ "php", "-S",  "0.0.0.0:80" ]
