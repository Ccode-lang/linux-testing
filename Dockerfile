FROM ubuntu:latest
USER testing
ENV ENV_VERSION 0.1
RUN apt-get update && apt-get upgrade -y
RUN sudo apt-get install git
CMD ["bash;"]
