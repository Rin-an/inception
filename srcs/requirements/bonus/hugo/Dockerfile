FROM alpine:3.13
RUN apk update && apk add hugo git shadow
COPY script.sh script.sh
RUN sh script.sh
WORKDIR /wut
COPY config.toml /wut/config.toml
EXPOSE 1313
CMD ["hugo", "server","--bind=0.0.0.0","--baseURL=https://localhost/wut","-p", "1313","--logFile=/dev/stdout","--appendPort=false"]
