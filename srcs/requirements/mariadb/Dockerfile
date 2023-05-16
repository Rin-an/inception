FROM alpine:3.14
RUN apk update && apk add mariadb mariadb-client openrc
COPY config.sh config.sh
EXPOSE 3306
ENTRYPOINT ["sh","config.sh"]
