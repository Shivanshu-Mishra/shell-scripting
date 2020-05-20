#! /bin/bash
LINE_NUM=1
cat /etc/passwd | while read line
do
	echo "${LINE_NUM}: $line"
	((LINE_NUM++))
done
