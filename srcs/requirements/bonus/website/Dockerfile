FROM alpine:3.13
RUN apk update && apk add hugo git
COPY script.sh script.sh
RUN sh script.sh
WORKDIR /randomfacts
RUN hugo
COPY home.md content/posts
EXPOSE 1313
CMD ["hugo","server","--bind=0.0.0.0","-p","1313","--appendPort=false"]
