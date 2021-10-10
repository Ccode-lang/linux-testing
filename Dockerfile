# use ubuntu
FROM ubuntu:latest

# install base packages
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git

# settings
ENV USER testing

# add user
RUN useradd -m -s /bin/bash $USER

# user settings
USER $USER
ENV HOME /home/$USER
ENV ENV_VERSION 0.1
ADD home /home/$USER
WORKDIR /home/$USER
