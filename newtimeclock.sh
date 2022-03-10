#!usr/bin/bash


# Timeclock Program

echo "Running newtimeclock.sh..."

while [ true ]; 
	do
	read -p $'this is my prompt: \n' input 
	echo $input

	if [[ $input =~ /stop/i ]]; then	
#	if [[ $input == "STOP" ]]; then
		break
	elif [[ -z $input ]]; then
		echo "empty input found, try again"	
	fi
	
	sleep 2

done


echo "Exiting newtimeclock"

