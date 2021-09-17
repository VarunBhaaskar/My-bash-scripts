#/bin/bash

echo -n "Enter filename: "
read file

if [ -e $file ]
then
	if [ -f $file ]
	then
		if [ ! -s $file ]
		then
		rm $file
		echo "file deleted sucessfully!"
		else echo "file size greater than zero. So I will not delete it."
		fi
	else echo "Not a normal file. so, I will not delete it."
	fi
else echo "File does not exist. So, obviously cant delete it you fool!!"
fi
