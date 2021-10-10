# use ubuntu
FROM ubuntu:latest

# install base packages
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git

# add user
RUN useradd -m -s /bin/bash testing

# user settings
USER testing
ENV HOME /home/testing
ENV ENV_VERSION 0.1
ADD home /home/testing
WORKDIR /home/testing

# delete vars
RUN rm -f /tmp/var_*
