FROM ubuntu:16.04
RUN apt-get update
RUN apt-get -y install curl
RUN curl https://google.com | wc -c > google-size
ENTRYPOINT echo google is this big; cat google-size
