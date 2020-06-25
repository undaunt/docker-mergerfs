FROM ubuntu:bionic
MAINTAINER IronicBadger <ironicbadger@linuxserver.io>
ENV DEBIAN_FRONTEND=noninteractive

# Builds MergerFS from source
RUN apt-get update && \
  apt-get upgrade -y && \
  apt-get install -y \
    g++ \
    pkg-config \
    git \
    git-buildpackage \
    pandoc \
    python \
    debhelper \
    libfuse-dev \
    libattr1-dev
RUN git clone https://github.com/trapexit/mergerfs.git && \
  cd mergerfs && \
  make clean && \
  make deb && \
  mkdir /build/ && \
  cp /*.deb /build/mergerfs-from-source.deb
