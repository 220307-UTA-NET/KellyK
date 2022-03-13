#!usr/bin/bash

date=$(date +"%Y-%m-%d")
time=$(date +"%T")


if [ -e ${date}.txt ]; then
	echo "Script run at ${time}" >> ${date}.txt # Records time to file
	echo "Time recorded at ${time}" # Outputs result to terminal
else
	echo "File for ${date} first run at ${time}" >> ${date}.txt # Creating file for the day
	echo "Creating file for ${date} at ${time}" # Outputs text to terminal
fi
