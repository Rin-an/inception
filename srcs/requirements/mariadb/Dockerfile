FROM alpine:3.14
RUN apk update && apk add mariadb mariadb-client openrc
COPY conf/config.sh config.sh
COPY conf/my.cnf /etc/my.cnf
COPY conf/mariadb-server.cnf /etc/my.cnf.d
EXPOSE 3306
CMD ["sh","config.sh"]
