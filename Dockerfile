FROM php:7.1-fpm-alpine

MAINTAINER "Nicolas Giraud" <nicolas.giraud.dev@gmail.com>

RUN curl -Ls http://static.pdepend.org/php/latest/pdepend.phar > /usr/local/bin/pdepend \
    && chmod +x /usr/local/bin/pdepend \
    && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

VOLUME ["/data"]
WORKDIR /data/www

ENTRYPOINT ["pdepend"]
CMD ["--version"]
