#! /bin/bash
# It will read all the supplicd input paramete
FILES=$@
# $# provide the count for supplied input parameters
if [ $# -eq 0 ]
then
	echo "No input file/directories provided"
else
	echo "Input files/directories are"
	for file in $FILES
	do
		echo "$file"
	done
fi
