#!/bin/bash
#this program is used to block a user after 3 failed ssh login attempts



d=`date +"%h %d %H"`

cat /var/log/secure | grep "$d" | egrep -i "Failed"  | grep -o -E "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}" | sort | uniq -c |\
while read z
do
	count=`echo $z | cut -c1`
	ip=`echo $z | cut -d' ' -f2`
	if [ $count -ge 3 ]
 	then
		input="sshd : $ip"
		echo $input
		temp=`cat /etc/hosts.deny | grep -n "$input"`
		if [ "$temp" = "" ]
		then
			echo $input >> /etc/hosts.deny
			cat /etc/hosts.deny
		fi
	fi
done


