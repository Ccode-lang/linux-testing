RUN echo "testing" > /tmp/var_1



# use ubuntu
FROM ubuntu:latest
# install base packages
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y git
# add user
RUN useradd -m -s /bin/bash $(cat /tmp/var_1)
# user settings
USER $(cat /tmp/var_1)
ENV HOME /home/$(cat /tmp/var_1)
ENV ENV_VERSION 0.1
ADD home /home/$(cat /tmp/var_1)
WORKDIR /home/$(cat /tmp/var_1)


# delete vars
RUN rm -f /tmp/var_*
