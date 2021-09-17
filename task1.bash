#!/bin/bash
#author: Varun
#date: 11/8/21



clear


d=`date "+%Y/%m/%d,%H:%M:%S"`
echo $d
FILENAME="secure"`date "+%Y-%m-%d,%H:%M:%S"`".tar"
echo $FILENAME
tar -cvf /home/VB/$FILENAME /var/log/secure*
echo finished zipping /var/log

rm -rf /home/VB/log
mkdir /home/VB/log
echo finished creating log directory in /home/VB/
tar -xvf /home/VB/$FILENAME -C /home/VB/log/
echo finished unzipping



echo -n  starting the whois process, please give an ip for it:
read ip
touch /home/VB/scripts/$ip-info.txt

start=`whois $ip | grep -n -m1  OrgName | cut -d: -f1`
start=`expr $start - 1 `
end=`expr $start + 10 `
cmd="sed -n $start,$end""p"
whois $ip | $cmd > /home/VB/scripts/$ip-info.txt

