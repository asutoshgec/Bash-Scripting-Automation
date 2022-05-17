#!/bin/bash
echo "Enter the URL to test"

read URL

COMMAND=$(curl -s --head  --request GET $URL| grep -w HTTP|awk '{print $2}'| head -1)

echo $COMMAND

if [ $COMMAND -eq 200 ]
then
 echo "SITE IS UP AND RUNNING "
else
 echo "SITE IS DOWN/INVALID ADDRESS"

fi
