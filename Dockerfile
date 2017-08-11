FROM alpine

RUN apk --no-cache add \
    openjdk8 \
    mysql-client \
    nginx \
 && mkdir /run/nginx
