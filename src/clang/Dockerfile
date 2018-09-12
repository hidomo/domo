FROM alpine:latest

RUN apk add --no-cache clang dumb-init

ENTRYPOINT ["/usr/bin/dumb-init", "--"]