#!/bin/sh
df -h --total |grep total | sed 's/%///'>/home/adminuser/new.txt
max=90
usage=$(awk '{print $5}' /home/adminuser/new.txt)
if [ $usage -lt $max ]
then
echo "you have used $usage % of your total disk"
else
mail -s "Disk almost full" sherpasanjay11@gmail.com</home/adminuser/new.txt
echo "disk almost full. please clean up. check email for details"
fi
