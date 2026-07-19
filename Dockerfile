FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    libbsd-dev \
    git \
    pkg-config \
    openjdk-8-jdk-headless \
    make \
    wget \
    curl \
    nano \
    && rm -rf /var/lib/apt/lists/*

ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH="$JAVA_HOME/bin:$PATH"

WORKDIR /workspace

CMD ["tail", "-f", "/dev/null"]