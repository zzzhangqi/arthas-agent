FROM alpine:3.15

RUN sed -i 's/dl-cdn.alpinelinux.org/mirrors.aliyun.com/g' /etc/apk/repositories \
    && apk add --no-cache wget

COPY . /

ENTRYPOINT [ "/bin/sh", "/entrypoint.sh" ]