FROM alpine:latest

ADD build.sh /tmp
RUN apk add --no-cache curl dumb-init && cd /usr/local/bin && \
    /tmp/build.sh && rm /tmp/build.sh

ENTRYPOINT ["/usr/bin/dumb-init", "--"]