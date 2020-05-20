#! /bin/bash
function read_user_input(){
	read -p "Enter files directory path " path
	read -p "Enter file extension to be renamed " extension
	prefix=$(date +%Y%m%d)
	read -p "Enter file prefix (Press ENTER for ${prefix}) " input_prefix
	if [ ${#input_prefix} -ne 0 ]
	then
		prefix=${input_prefix}
	fi
}
function rename_extension_files(){
	cd ${path}
	files=$(ls *${extension})
	for file in ${files}
	do
		echo "Renaming ${file} to ${prefix}${file}"
		mv ${file} ${prefix}${file}
	done
}
read_user_input
rename_extension_files
