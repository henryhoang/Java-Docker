FROM ubuntu:14.04
MAINTAINER Henry Hoang "henry.hoang@j2.com"

RUN apt-get -y update && apt-get -yq install default-jdk
RUN apt-get install xauth
RUN apt-get install xorg openbox
RUN apt-get install openbox

RUN DISPLAY=localhost:0.0

EXPOSE 80
WORKDIR /root
ADD . /
ENTRYPOINT ["/bin/sh", "-c", "/run.sh"]


