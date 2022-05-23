FROM debian:jessie

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        curl \
        git

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

#COPY command/setup.sh /setup.sh
#RUN chown -R www-data /var/www/html
