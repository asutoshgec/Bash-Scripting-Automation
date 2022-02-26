#!/usr/bin/env bash
######################################################
# Author: Asutosh                                    #
# Date: Oct-2021                                     #
# Usage is: start,stop,restart and version of docker # 
######################################################

read -p "Enter your option" option

if [[ $option == start ]]
then
   echo "Starting docker....."
   systemctl start docker 1> /dev/null 2> /dev/null
   sleep 5
   echo "Docker started successfully"
   sleep 3
   echo "Getting status......."
   sleep 2
   systemctl status docker
elif [[ $option == stop ]]
then
    echo "Stopping Docker....."
    systemctl stop docker 1> /dev/null 2> /dev/null
    sleep 5
    echo "Docker stopped"
    sleep 3
    echo "Getting status......."
    sleep 2
    systemctl status docker
elif [[ $option == restart ]]
then
   echo "Restarting Docker........"
   systemctl restart docker  1> /dev/null 2> /dev/null
   sleep 5
   echo "Docker restarted successfully"
   sleep 3
   echo "Getting status......."
   sleep 2
   systemctl status docker
elif [[ $option == version ]]
then
   echo "Getting Docker version....."
   docker -v
else
   echo "Enter valid option"
fi
