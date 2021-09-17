#!/bin/bash




echo enter a password
read pass

len=`expr length $pass`
#echo $len
man=`echo $pass | grep -E '[a-z]+' | grep -E '[A-Z]+' | grep -E '[0-9]+'`
#echo $man
if [ $len > 8 ]
then
	if [ "$pass" == "$man" ]
	then
	echo "nice password"
	else 
	echo "bad password"
	fi
else
echo "bad password"
fi
