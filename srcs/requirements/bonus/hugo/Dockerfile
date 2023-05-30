FROM alpine:3.13
RUN apk update && apk add hugo git
COPY script.sh script.sh
RUN sh script.sh
WORKDIR /inception
RUN hugo
COPY page.html content/
EXPOSE 1313
CMD ["hugo","server","-D","--bind=0.0.0.0","-p", "1313","--appendPort=false"]
