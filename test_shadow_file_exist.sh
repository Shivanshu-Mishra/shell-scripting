#! /bin/bash
if [ -a /etc/shadow ]
then
	echo "Shawdow passwords are enabled."
fi
if [ -w /etc/shadow ]
then
	echo "You have permission to edit /etc/shadow."
else
	echo "You donot have permission to edit /etc/shadow."
fi
