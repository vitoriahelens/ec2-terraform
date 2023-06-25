FROM php:latest
WORKDIR /var/www/html
COPY hello-world.php ./var/www/html
EXPOSE 80
CMD ["php", "-S", "0.0.0.0:80"]
