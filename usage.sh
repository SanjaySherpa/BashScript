#!/bin/sh
usage=$(df -h --total | grep total | awk '{sum+=$5} END {print sum}')
if [ $usage -lt 90 ]
then
echo "Your have used $usage% if your disk. you are fine"
else
echo "disk space full"
fi
