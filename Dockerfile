FROM ubuntu:latest
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git
RUN useradd -m -s /bin/bash testing
USER testing
ENV HOME /home/testing
ENV ENV_VERSION 0.1
ADD home /home/testing
WORKDIR /home/testing
