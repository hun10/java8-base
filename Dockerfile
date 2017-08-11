FROM alpine

RUN apk --no-cache add \
    openjdk8-jre \
    mysql-client \
    nginx \
 && mkdir /run/nginx
