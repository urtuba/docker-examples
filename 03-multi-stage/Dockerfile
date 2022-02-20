FROM ubuntu:16.04 AS build
RUN apt-get update
RUN apt-get -y install curl
RUN curl http://google.com | wc -c > google-size

FROM alpine
COPY --from=build /google-size /google-size
ENTRYPOINT echo google is this big; cat google-size
