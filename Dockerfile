ARG username=testing



# use ubuntu
FROM ubuntu:latest
# install base packages
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git
# add user
RUN useradd -m -s /bin/bash $username
# user settings
USER $username
ENV HOME /home/$username
ENV ENV_VERSION 0.1
ADD home /home/$username
WORKDIR /home/$username
