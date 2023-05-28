FROM alpine:3.14
RUN apk update && apk add build-base tcl openrc redis php7-redis
COPY conf/script.sh script.sh
COPY conf/redis.conf /usr/local/etc/redis.conf
RUN sh script.sh
EXPOSE 6379
CMD ["redis-server", "/usr/local/etc/redis.conf"]
