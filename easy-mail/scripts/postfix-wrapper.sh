#!/bin/bash

#echo "postfix-wrapper.sh >> entry"

# call "postfix stop" when exiting
trap "{ echo Stopping postfix; /usr/sbin/postfix stop; exit 0; }" EXIT

# start postfix
service postfix start
#/usr/sbin/postfix -c /etc/postfix start
# avoid exiting
sleep infinity 

#echo "postfix-wrapper.sh >> exit - should never run"a