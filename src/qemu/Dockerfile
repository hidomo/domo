FROM alpine:edge

RUN apk add --no-cache dumb-init qemu-system-i386

ENTRYPOINT ["/usr/bin/dumb-init", "--"]