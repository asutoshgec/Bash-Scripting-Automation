#!/usr/bin/env bash

#Simple Shell Script to verify the user is root or not and

userid=$(id -u)

if [[ $userid -eq 0 ]]
then
  echo "You are root"
else
  echo "You are not root"
  echo "The user name is $(id -un)"
fi

