#! /bin/bash
read -p "How many lines of /etc/passwd would you like to see? " NUMBER_OF_LINES
head -${NUMBER_OF_LINES} /etc/passwd | while read line
do
	echo "$line"
done
