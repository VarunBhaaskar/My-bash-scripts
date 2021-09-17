#!/bin/bash
# task 2
#author : varun
# date: 11/8/21


echo starting unzipping to /var/log/
#unzip -d /var/log/ /home/VB/secure.zip
echo finished unzipping

rm /home/VB/failed-ip.txt
#grep -i sshd /var/log/secure* | grep -i failed | awk -F' '  '{print $13}' | tee /home/VB/failed-ip.txt
grep -i sshd /var/log/secure* | grep -i failed | grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" > /home/VB/failed-ip.txt
echo before sorting and uniq, no of lines : `cat /home/VB/failed-ip.txt | wc -l`
sleep 5
sort /home/VB/failed-ip.txt | uniq > /home/VB/failed-ip.txt
echo after sorting and uniq, no of lines : `cat /home/VB/failed-ip.txt | wc -l`


cp /home/VB/failed-ip.txt /var/www/html/index1.txt
echo sucess





