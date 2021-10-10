# use ubuntu
FROM ubuntu:latest

# install base packages
RUN apt-get update && apt-get upgrade -y
ADD packages.txt /tmp
RUN xargs apt-get install -y </tmp/packages.txt

# settings
ENV USER testing

# add user
RUN useradd -m -s /bin/bash $USER
RUN 1 | sudo passwd $USER

# user settings
USER $USER
ENV HOME /home/$USER
ENV ENV_VERSION 0.1
ADD home /home/$USER
WORKDIR /home/$USER
