#!/bin/bash

# script to run a whois command on failed ips and putting it in a file called index.txt

#the below command generates a file called failed-ip.txt in VB's home directory
#./task2.bash   

file=/home/VB/index.txt
echo "" > /home/VB/index.txt

cat /home/VB/failed-ip.txt |\
while read ip
do
	echo " " >> $file
	echo "IP is: $ip" >> $file
	echo "Country is: " >> $file
	whois $ip | grep -i country >> $file
	whois $ip | grep -i address >> $file
	echo "delimiter" >> $file
done

cp /home/VB/index.txt /var/www/html/index2.txt
echo Done!

