#! /usr/bin/env bash
<<mycode
if which docker  2> /dev/null 1> /dev/null
then
   echo "Docker is installed on this host"
   echo "Docker version is $(docker -v)"
fi
mycode

which code

if [[ $? -eq 1 ]]
then
  echo "Docker is present on the host"
  echo "Docker version is $(docker -v)"
else
  echo "Docker is not present on the host"
fi
