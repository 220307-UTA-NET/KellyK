#!usr/bin/bash


# Timeclock Program

echo "Running newtimeclock.sh..."


while [ true ]; 

	do
	read -p $'this is my prompt: \n' input 
	timestamp =$(date +"%Y-%m-%d %T")

	echo $input
	echo $timestamp
	ech $input + $timestamp >> ./clockInOut.txt

#	if [[ $input =~ /stop/i ]]; then	
	if [[ $input == "STOP" ]]; then
		break
	elif [[ -z $input ]]; then
		echo "empty input found, try again"	
	fi

	echo $input + $timestamp >> ./ClockInOut.txt
	
	sleep 2

done


echo "Exiting newtimeclock"

