#!/bin/bash
# this is a script to show working of case statements


echo -n "Enter your choice: "
read n

case $n in

	a | A ) echo "The no of running services are `systemctl | wc -l` " ;;
	b | B ) echo "The no of processes currently running are `ps -ef | wc -l` " ;;
	c | C ) echo "The no of files in the current directory is `ls -al | ec -l` " ;;
	* ) echo "Invalid choice" ;;

esac
