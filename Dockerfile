FROM ubuntu:14.04
MAINTAINER Henry Hoang "henry.hoang@j2.com"

RUN apt-get -y update && apt-get -yq install default-jdk

EXPOSE 80
WORKDIR /root
#ADD . /
#ENTRYPOINT ["/bin/sh", "-c", "/run.sh"]

ADD run.sh /root/run.sh
CMD ["./run.sh"]
