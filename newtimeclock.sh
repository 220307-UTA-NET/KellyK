#!usr/bin/bash


# Timeclock Program

echo "Running newtimeclock.sh..."
timestamp =$(date +"%Y-%m-%d %T")


while [ true ]; 

	do
	read -p $'this is my prompt: \n' input 
	echo $input
	echo $timestamp

#	if [[ $input =~ /stop/i ]]; then	
	if [[ $input == "STOP" ]]; then
		break
	elif [[ -z $input ]]; then
		echo "empty input found, try again"	
	fi
	
	sleep 2

done


echo "Exiting newtimeclock"

