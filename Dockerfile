# Define a imagem base com PHP 8 e Apache
FROM php:8.0-apache

# Instala extensões necessárias para PDO e PostgreSQL
RUN docker-php-ext-install pdo pdo_pgsql

# Habilita mod_rewrite para o Apache (útil se estiver usando rotas amigáveis, como no Slim Framework)
RUN a2enmod rewrite

# Instala o Composer (utilizando a imagem oficial do Composer para copiar o binário)
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Define o diretório de trabalho no container
WORKDIR /var/www/html

# Copia todos os arquivos do projeto para dentro do container
COPY . .

# Instala as dependências definidas no composer.json
RUN composer install

# Expõe a porta 80 para acesso HTTP
EXPOSE 80

# Comando para iniciar o Apache em primeiro plano (não obrigatório se a imagem base já faz isso)
CMD ["apache2-foreground"]
