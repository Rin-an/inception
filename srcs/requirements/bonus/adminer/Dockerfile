FROM alpine:3.14
RUN apk update && apk add php7 php7-session php7-mysqli
RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php
EXPOSE 8000
RUN mv adminer-4.8.1.php index.php
COPY exec.sh exec.sh
CMD ["sh","exec.sh"]
