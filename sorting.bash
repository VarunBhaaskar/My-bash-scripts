#!/bin/bash

echo file contents: `cat $1`

echo sorting 
for i in `cat $1`
do
echo $i
done | sort -rn 

echo uniqu only
for i in `cat $1`
do
echo $i
done | sort -rn | uniq

