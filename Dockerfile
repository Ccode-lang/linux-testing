FROM ubuntu:latest
ENV ENV_VERSION 0.1
RUN sudo apt-get update && apt-get upgrade -y
RUN sudo apt-get install git
CMD ["bash;"]
