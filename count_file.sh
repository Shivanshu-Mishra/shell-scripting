#! /bin/bash
function file_count(){
	local number_of_files=$(ls $1 | wc -l)
	echo "$1:"
	echo $number_of_files
}
read -p "Enter directory name: " directory
file_count $directory

