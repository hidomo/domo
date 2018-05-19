FROM fedora:26

RUN dnf install -y \
    which make libtool cmake clang \
    redhat-rpm-config gperftools-devel libatomic \
    lldb python2-pip \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
