FROM ubuntu:latest
ENV ENV_VERSION 0.1
RUN apt-get update && apt-get upgrade -y
RUN apt-get install git
CMD ["bash;"]
