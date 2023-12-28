FROM alpine:3.15

COPY arthas /opt/arthas
COPY entrypoint.sh /

ENTRYPOINT [ "/bin/sh", "/entrypoint.sh" ]