#!/bin/bash
#author: varun
# when user enters a id, it will return it home directory


echo -n "Enter a valid username in system: "
read name
cat /etc/passwd | cut -d: -f1 |\
while read usr
do
	if  [ "$name" == "$usr" ]
	then 
	echo home directory found
	echo `cat /etc/passwd | grep $name | cut -d: -f6`
	break

	fi
done
