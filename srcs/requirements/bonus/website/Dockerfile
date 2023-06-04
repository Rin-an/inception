FROM alpine:3.13
RUN apk update && apk add hugo git
COPY script.sh script.sh
RUN sh script.sh
WORKDIR randomfacts
COPY config.toml /randomfacts/config.toml
COPY home.md /randomfacts/content/posts/home.md
COPY about.md /randomfacts/content/about/index.md
EXPOSE 1313
CMD ["hugo", "server","--bind=0.0.0.0","--baseURL=https://localhost/randomfacts","-p", "1313","--logFile=/dev/stdout","--appendPort=false"]
