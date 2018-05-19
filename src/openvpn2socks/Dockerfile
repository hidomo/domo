FROM alpine:edge

ADD sockd.sh /usr/local/bin/
ADD sockd.conf /etc/

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories \
    && apk add --no-cache dante-server openvpn --repository http://dl-3.alpinelinux.org/alpine/edge/testing/\
    && chmod a+x /usr/local/bin/sockd.sh

ENTRYPOINT [ "openvpn", \
    "--up", "/usr/local/bin/sockd.sh", \ 
    "--script-security", "2", \
    "--config"]