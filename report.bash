#! /bin/bash

clear

# Check OS Type
os=$(uname -o)
echo -e '\E[32m'"Operating System Type :"  $os


# Check Kernel Release
kernel=$(uname -r)
echo -e '\E[32m'"Kernel Release :"  $kernel

# Check hostname
echo -e '\E[32m'"Hostname :"  $HOSTNAME

# Check Internal IP
internalip=$(hostname -I)
echo -e '\E[32m'"Internal IP :"  $internalip

# Check External IP
externalip=$(curl ifconfig.me )
echo -e '\E[32m'"External IP :  "$externalip

# Check DNS
nameservers=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}')
echo -e '\E[32m'"Name Servers :"  $nameservers 

# Check Logged In Users
echo -e '\E[32m'"Logged In users :"  && who 

# Check RAM and SWAP Usages
echo -e '\E[32m'"Ram Usages :" && free -h | grep Mem
echo -e '\E[32m'"Swap Usages :" && free -h | grep -i Swap

# Check Disk Usages
echo -e '\E[32m'"Disk Usages :" && df -h| grep 'Filesystem\|/dev/sda*' 

# Check Load Average
loadaverage=$(top -n 1 -b | grep "load average:" | awk '{print $10 $11 $12 $13 $14}')
echo -e '\E[32m'"Load Average :" $loadaverage

# Check System Uptime
upt=$(uptime | awk '{print $3,$4}' | cut -f1 -d,)
echo -e '\E[32m'"System Uptime  :" $upt 


echo -e '\E[30m'
