#!/bin/bash
#
# Bash script to manage Progra
# Israel Leiva A. - <ileiva at csrg.cl>
# version: 0.01
#
# Usage:
# chmod +x progra.sh
#	./progra [start|stop|restart]
#
#

DIR="/home/progra/"
SCRIPT_NAME="client.pl"
OPTION=$1

cd $DIR

if [ $OPTION = 'start' ]; then
	echo ":: Starting Progra"
	LS=$(ls *.pid 2>/dev/null)
	if [ "$LS" = "" ]; then
		perl $SCRIPT_NAME
	else
		echo "ERROR: There is a Progra running"
		echo "To start a new one you must stop it"
	fi
elif [ $OPTION = "stop" ]; then
	echo ":: Stopping Progra"
	LS=$(ls *.pid 2>/dev/null)
	if [ "$LS" = "" ]; then
		echo "ERROR: There is no Progra running"
	else
		rm $LS
	fi
elif [ $OPTION = "restart" ]; then
	echo ":: Restarting Progra"
	LS=$(ls *.pid 2>/dev/null)
	if [ "$LS" = "" ]; then
		echo "ERROR: There is no Progra running"
	else
		rm $LS
		sleep 2
		echo ":: Starting Progra"
		perl $SCRIPT_NAME
	fi
else
	echo ":: Invalid option"
fi



