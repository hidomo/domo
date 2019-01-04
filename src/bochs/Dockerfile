FROM fedora:29

RUN dnf install -y bochs dumb-init \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

ENTRYPOINT ["/usr/bin/dumb-init", "--"]