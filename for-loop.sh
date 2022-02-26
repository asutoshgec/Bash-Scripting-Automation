#! /usr/bin/env bash

for i in {1..6}
do
  echo "Welcome"
done

#for i in usage-of-here-doc.sh variable-practice.sh
#for i in $(ls) #It will check all the files inside the current directory
#I want to check for all the files inside the directory of a given path
given_path=$1
for i in $(ls $given_path)
do
 if [[ -x $i ]]
 then
    echo "$i is having execution permission"
 else
    echo "$i is not having execution permission "
 fi
done

