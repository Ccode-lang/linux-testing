FROM ubuntu:latest
RUN useradd -m -s /bin/bash testing
RUN mkdir /home
RUN mkdir /home/testing
USER testing
ENV HOME /home/testing
ENV ENV_VERSION 0.1
WORKDIR /home/testing
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git
