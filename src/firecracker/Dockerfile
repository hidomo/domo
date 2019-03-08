FROM golang:latest

ADD build.sh /tmp
RUN cd /tmp && /tmp/build.sh && \
    git clone https://github.com/firecracker-microvm/firectl && \
    cd firectl && make && \
    mv /tmp/firecracker /usr/local/bin/firecracker && \
    mv /tmp/dumb-init /usr/local/bin/dumb-init && \
    mv /tmp/firectl/firectl /usr/local/bin/firectl && \
    rm -rf /tmp

ENTRYPOINT ["/usr/local/bin/dumb-init", "--"]