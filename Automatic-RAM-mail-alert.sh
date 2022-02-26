#!/usr/bin/env bash
To=asutoshgec@gmail.com
TH_L=400
free_RAM=$(free -mt | grep -w Total | awk '{print $4}')
if [[ $free_RAM -lt $TH_L ]]
then
   echo "The server is running low with available RAM size, Current available RAM is $free_RAM" | mail -s "RAM ALERT $(date)" "$To"
fi

#=====================================================
#Now we need to send filesystem utilization mail
Mailid=asutoshgec@gmail.com
FS_util=$(df -h | egrep -v  "tmpfs|devtmpfs")
echo -e "The filesystem utilization on $(hostname) is: \n $FS_util " | /usr/bin/mail -s "Filesystem utilization" "$Mailid"
#To execute the echo command with \n. need to put -e.
