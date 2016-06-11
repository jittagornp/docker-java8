FROM ubuntu:14.04

MAINTAINER jittagorn <jittagornp@gmail.com>

# Fix sh
RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update && \
apt-get install -y python-software-properties && \
apt-get install -y software-properties-common && \
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
add-apt-repository ppa:webupd8team/java && \
apt-get update && \
apt-get install -y oracle-java8-installer
