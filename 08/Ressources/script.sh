#!/bin/bash
# IP USED = 192.168.99.100
mkdir ./folder ; cd ./folder
wget -np -r -A "README*" -nd -l 0 -e robots=off http://192.168.99.100/.hidden/
tmp=`ls | grep README | wc -l`
index=$(($tmp-1))
readme="README."
while [ $index != 0 ]
do
	file=$readme$index
	str=`cat $file | grep 2`
	printf "%s" $str
	index=$(($index-1))
done
str=`cat "README" | grep -E [0-9a-f]{64}`
printf "%s" $str
