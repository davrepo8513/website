# Base image
FROM php:8.2-apache

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy application files to the container
COPY public/ /var/www/html/

# Install any necessary PHP extensions (example: mysqli)
RUN docker-php-ext-install mysqli

# Expose port 80 for the web server
EXPOSE 80

FROM devopsedu/webapp
COPY . /var/www/html/
CMD ["apache2ctl", "-D", "FOREGROUND"]

