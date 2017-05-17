FROM ubuntu:16.04
MAINTAINER C31

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q --fix-missing && apt-get install -q -y \
    nano \
    mailutils \
    iputils-ping 


COPY main.cf /etc/postfix/

#RUN mkdir /mail_go
#COPY start.sh /mail_go/

#EXPOSE 25
#CMD ["service", "postfix", "start"]

#ENTRYPOINT "service postfix start" && /bin/bash
#ENTRYPOINT service postfix start && /bin/bash