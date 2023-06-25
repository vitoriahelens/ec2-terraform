FROM php:7.4-apache
WORKDIR /var/www/html
COPY hello-world.php ./var/www/html
EXPOSE 80

