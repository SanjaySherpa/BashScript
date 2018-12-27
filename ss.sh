#!/bin/sh
df>sanjay.txt
max=90
usage=$(awk '{sum+=$5} END {print sum}' sanjay.txt)
if [ $usage -lt $max ]
then
echo "you have used $usage % of your total disk"
else
mail -s "Disk almost full" sherpasanjay11@gmail.com<sanjay.txt
echo "disk almost full. please clean up. check email for details"
fi
