FROM alpine

ENV DOCKERIZE_VERSION v0.5.0

RUN apk --no-cache add \
    openssl \
    openjdk8-jre \
    mysql-client \
    nginx \
 && mkdir /run/nginx \
 && wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
 && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
 && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz
