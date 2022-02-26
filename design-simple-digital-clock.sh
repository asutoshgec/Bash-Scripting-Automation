#/usr/bin/env bash
clear
while true
do
   date | awk '{print $4}'
   sleep 1
   clear
done

