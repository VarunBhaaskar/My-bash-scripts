#!/bin/bash
# checks if two files have same content



#cat $1 |\
#while read x
for x in `cat $1`
do
  #echo $x
  a=`cat $2 | grep -o -m 1 -E  "\<$x"`
  if [ "$a" == "$x" ]
	then
	echo $x
  fi
done
