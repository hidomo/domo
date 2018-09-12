FROM fedora:28

RUN dnf install -y \
    which make libtool cmake clang \
    redhat-rpm-config gperftools-devel libatomic \
    dumb-init lldb gdb python2-pip \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
ENV LANG=C.UTF-8 CC=/usr/bin/clang CXX=/usr/bin/clang++

ENTRYPOINT ["/usr/bin/dumb-init", "--"]