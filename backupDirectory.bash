#!/bin/bash

echo "Welcome to backup manager"
echo -n "Enter the directory name to backup: "
read name
b=`basename "$name"`
t=`date +"%d-%b-%Y.%H-%M"`
destination="$b.$t.tar"
echo $destination

if [ -d $name ]
then
	tar -cvf /home/VB/$destination $name 
	echo "sucessfully zipped"
else echo "Not a valid directory! I can only backup directories"
fi
	
