FROM alpine:3.14
RUN apk update && apk add nginx openssl openssl-dev curl php7-fpm openrc\
        && rm -rf /var/tmp/*
ADD conf/nginx-selfsigned.crt /etc/ssl/certs
ADD conf/nginx-selfsigned.key /etc/ssl/private
COPY conf/default.conf /etc/nginx/http.d/default.conf
#RUN nginx
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
