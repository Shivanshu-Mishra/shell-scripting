#! /bin/bash
case "${1}" in 
	start)
		/tmp/sleep­walking­server.sh &
		;;
	stop)
		kill $(cat /tmp/sleep­walking­server.pid)
		;;
	*)
		echo "Usage sleep­walking start|stop" ; exit 1
		;;
esac
