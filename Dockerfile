FROM php:8.1-apache
RUN apt update
WORKDIR /var/www/html
COPY . .
CMD ["apache2-foreground"]

