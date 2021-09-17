#!/bin/bash


echo Enter two numbers:
read n1
read n2

if [ $n1 -gt 0 ]
then
	if [ $n2 -gt 0 ]
		then
			echo sum is `expr $n1 + $n2 `
	else echo "$n2 is less than zero. Invalid!"
	fi
else echo "$n1 is less than zero. Invalid!"
fi 
