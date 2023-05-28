FROM alpine:3.14
RUN apk update && apk add php7 \
			php7-cli \
			php7-opcache \
			php7-mbstring \
			php7-xml \
			php7-gd \
			php7-curl \
                        php7-phar \
                        php7-mysqli \
                        php7-iconv \
                        php7-fpm \
                        php7-json \
						lftp \
                        openrc
COPY conf/config.sh config.sh
COPY conf/www.conf /etc/php7/php-fpm.d
EXPOSE 9000
CMD ["sh", "config.sh"]
