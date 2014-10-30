FROM ubuntu:14.04
MAINTAINER Henry Hoang "henry.hoang@j2.com"

RUN apt-get -y update && apt-get -yq install default-jdk

#EXPOSE 80
WORKDIR /
ADD . /
ENTRYPOINT ["/bin/sh", "-c", "/run.sh"]



