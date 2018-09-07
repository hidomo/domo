FROM alpine:latest

RUN apk add --no-cache tg dumb-init
ENV LANG=C.UTF-8

ENTRYPOINT ["/usr/bin/dumb-init", "--"]