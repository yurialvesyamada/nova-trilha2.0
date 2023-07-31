# Use the official PHP Apache image as the base image
FROM php:7.4-apache

# Copy the PHP application code to the container's web root
COPY . /var/www/html/

# Enable Apache mod_rewrite for clean URLs
RUN a2enmod rewrite

# Ensure the PHP extensions required by the application are installed
# Add any additional PHP extensions as needed based on your application requirements
RUN docker-php-ext-install pdo pdo_mysql
