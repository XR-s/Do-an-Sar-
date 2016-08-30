#!/bin/sh
# Default flags to pass to the MUD server (see admin.txt for a description
# of all flags).
#############################################################################

SERVER_NAME=./maxmigame

while ( : ) do

  DATE=`date`
  echo "autoauth starting auth $DATE" >> syslog
  echo "running" $SERVER_NAME >> syslog

#  cp -f $SERVER_NAME $SERVER_NAME.current
  $SERVER_NAME

  rm cores/core.1
  mv cores/core.2 cores/core.1
  mv cores/core.3 cores/core.2
  mv cores/core.4 cores/core.3
  mv cores/core.5 cores/core.4
  mv cores/core.6 cores/core.5
  mv $SERVER_NAME.core cores/core.6

 # rm profiles/profile.1
 # mv profiles/profile.2 profiles/profile.1
 # mv profiles/profile.3 profiles/profile.2
 # gprof $SERVER_NAME.current $SERVER_NAME.gmon > profiles/profile.3

  if [ ! -r .fastboot ]; then
    sleep 3
  else
    rm .fastboot
    sleep 3
  fi

  if [ -r .killscript ]; then
    DATE=`date`;
    echo "autoscript killed $DATE"  >> syslog
    rm .killscript
    exit
  fi

  while [ -r pause ]; do
    sleep 60
  done

done
