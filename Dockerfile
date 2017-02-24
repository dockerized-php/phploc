FROM php:7.1-alpine
MAINTAINER Tommy Muehle <tommy.muehle@gmail.com>

ENV PHPLOC_VERSION=latest

RUN apk update --no-cache \
    && apk add --no-cache tini \
    && rm -rf /var/cache/apk/* /var/tmp/* /tmp/*

RUN curl -L https://phar.phpunit.de/phploc.phar > /usr/local/bin/phploc \
    && chmod +x /usr/local/bin/phploc

VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["/sbin/tini", "--", "phploc"]
CMD ["--help"]
