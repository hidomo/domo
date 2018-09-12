FROM debian:latest

RUN apt-get update && apt-get install -y gnupg2 wget
COPY sources.list /etc/apt/sources.list
RUN wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | apt-key add - && \
    apt-get update && apt-get install -y clang-tools-8