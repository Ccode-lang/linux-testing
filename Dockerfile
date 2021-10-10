FROM ubuntu:latest
ENV ENV_VERSION 0.1
ENV PWD /root
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git
