#! /usr/bin/env bash

read -p "Enter the service name to perform action: " servicename
read -p "Enter the action name to perform on the $servicename: " actionname

systemctl ${actionname} ${servicename}

