FROM alpine:3.13
RUN apk update && apk add nginx openssl 
RUN openssl req -x509 -nodes -days 365 -subj \
		"/C=CA/ST=QC/O=Company, Inc./CN=mydomain.com" \
        -addext "subjectAltName=DNS:mydomain.com" \
        -newkey rsa:2048 -keyout /etc/ssl/private/nginx.key -out /etc/ssl/private/nginx.crt
COPY conf/default.conf /etc/nginx/http.d/default.conf
#COPY conf/default.conf /etc/nginx/conf.d
COPY conf/proxy_params /etc/nginx/proxy_params
RUN mkdir /run/nginx
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
