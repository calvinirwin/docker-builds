FROM ubuntu:16.04
MAINTAINER C31

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -q --fix-missing && apt-get install -q -y \
    nano \
    mailutils 

# RUN apt-get update -q --fix-missing && apt-get install -q -y \
#     nano \
#     mailutils \
#     supervisor

RUN mkdir /scripts
RUN touch /dev/null
COPY ./configs/main.cf /etc/postfix/
# COPY ./configs/supervisord.conf /etc/supervisor
# COPY ./scripts/postfix-wrapper.sh /scripts/
COPY ./scripts/service-wrapper.sh /scripts/

EXPOSE 25

#RUN service supervisor restart
# HACK: this is a hack to get the docker image to stay running 
# - I tried configuring supervisor but that didn't work'
#ENTRYPOINT ["tail", "-f", "/dev/null"]
# CMD ["/usr/bin/supervisord", "-n"] 
#ENTRYPOINT ["service", "supervisor", "restart"]


ENTRYPOINT ["bash", "/scripts/service-wrapper.sh"]
