#! /bin/bash
read -p "Enter name of file/directory" FILE_NAME
if [  -f ${FILE_NAME}  ]
then
    echo "${FILE_NAME} exist and a regular file"
    result=$(ls -l ${FILE_NAME})
    echo result
elif [ \( -a ${FILE_NAME} \) -a \( -d ${FILE_NAME} \) ]
then
	echo "${FILE_NAME} exist and is a directory"
	result=$(ls -l ${FILE_NAME})
elif [ ! -a ${FILE_NAME} ]
then
	echo "${FILE_NAME} does not exist"
else
	echo "${FILE_NAME} other type of file"
fi
