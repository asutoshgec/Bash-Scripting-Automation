#! /usr/bin/env bash

systemctl status docker 2> /dev/null 1> /dev/null
if [[ $? -eq 0 ]]
then
   echo "Docker is already running"
else
   echo "Starting Docker.........."
   systemctl start docker 1> /dev/null 2> /dev/null
   sleep 5
     if [[ $? -eq 0 ]]
     then
       echo "Docker started successfully"
     else
       echo "Docker service failed to start"
    fi
fi

