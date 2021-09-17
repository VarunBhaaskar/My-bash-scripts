#!/bin/bash


echo -n "Enter name: "
read name
echo -n "Enter password: " 
stty -echo
read pass
stty sane
echo

if [ "$name" = "DAD" ]
then
	if [ "$pass" = "111" ]
	then
		echo "login sucessful!"
	else echo "Invalid password"
	fi
else echo "Invalid Username"
fi
