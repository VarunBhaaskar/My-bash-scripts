#!/bin/bash
# this script is to welcome the user and get a input n and show the n no of lines from a file



user=`whoami`
lines=`cat /home/VB/about_cognizant | wc -l`
echo "Welcome, $user"
echo -n "Enter the no of lines to be displayed: "
read n

if [ $n -gt $lines ]
then
echo "No of lines entered exceed the available"
else
head -$n /home/VB/about_cognizant
fi
