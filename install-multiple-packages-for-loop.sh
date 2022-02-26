#! /usr/bin/env bash
user=$(id -un) 
if [[ $user == root ]]
then
   echo "Performing Installation.........."
else
   echo "Please switch to the root user before performing YUM installation"
   exit 1
fi

for i in vim nginx ftp 
do
  if which $i 1> /dev/null 
  then
    echo "$i package is already installed"
  else
     echo "Installing Package........"
     yum install -y $i 1> /dev/null #&> /dev/null
     if [[ $? -eq 0 ]]
     then
       echo "SUCCESS"
     else
       echo " FAILED"
     fi  

  fi
done


  