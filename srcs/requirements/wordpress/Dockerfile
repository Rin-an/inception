FROM alpine:3.14
RUN apk update && apk add php7 \
                        php7-phar \
                        php7-mysqli \
                        php7-iconv \
                        php7-fpm \
                        php7-json \
                        openrc
COPY config.sh config.sh
COPY www.conf /etc/php7/php-fpm.d
EXPOSE 9000
RUN sh config.sh
COPY wp-config.php /wordpress
CMD ["php-fpm7","-F"]
