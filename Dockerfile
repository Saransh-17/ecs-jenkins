FROM php:8.1-apache
RUN apt update && \
echo "hello" > /var/www/html/index.html
CMD ["apache2-foreground"]
