#! /usr/bin/env bash
<< myloop
while true
do
  echo "SUCCESS"
done
#This will run for infinity times
myloop

<< myloop1
start=1
while [[ $start -le 10 ]]
do
  echo "SUCCESS"
  ((start++))
done
myloop1

<< myloop2
file_name="define_and_calling_a_function.txt"
while read each_line
do
  echo "$each_line"
done < $file_name
myloop2

ls -l | while read each_line
do
 echo "$each_line"
done



