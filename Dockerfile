# PHP негізінде Dockerfile құрастыру
FROM php:8.2-cli

# Жұмыс қалтасын орнату
WORKDIR /app

# Файлдарды көшіру
COPY . .

# Тәуелділіктерді орнату
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && docker-php-ext-install pdo_mysql

# Composer орнату
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Тәуелділіктерді орнату
RUN composer install --no-dev --optimize-autoloader

# Серверді іске қосу
CMD ["php", "artisan", "serve", "--host=0.0.0.0", "--port=10000"]
