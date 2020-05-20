#! /bin/bash
cr=`echo $'\n.'`
cr=${cr%.}
while true
do
	read -p "1. Show disk usage.$cr 2. Show system uptime.$cr 3. Show the users logged into the system.$cr What would you like to do? (Enter q to quit) " input
	case "$input" in
		1)
			df -h
			;;
		2)      
			uptime
			;;
		3)
			w
			;;
		q)
			echo "Goodbye!"
			break
			;;
		*)
			echo "Invalid option"
			;;
	esac
done
