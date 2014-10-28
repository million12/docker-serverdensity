#!/bin/bash

if [ ! -e /etc/sd-agent/config.cfg ]; then
  cd /tmp
  ./agent-install.sh -a https://$ACCOUNT_NAME.serverdensity.io -t $API_KEY -g $GROUPNAME
fi

if [ -e /var/log/sd-agent/sd-agent.pid ]; then
  rm /var/log/sd-agent/sd-agent.pid
fi 