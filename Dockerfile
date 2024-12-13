# Use PHP with Apache as the base image
FROM php:8.2-apache

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy your application's public directory to the container's web root
COPY public/ /var/www/html/

# Install necessary PHP extensions (e.g., mysqli)
RUN docker-php-ext-install mysqli

# Expose port 80 for the web server
EXPOSE 80

# Ensure Apache runs in the foreground
CMD ["apache2ctl", "-D", "FOREGROUND"]
