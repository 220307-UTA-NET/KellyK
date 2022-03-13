#usr/bin/bash

#NumberOfCommands=()
BashCommands=()

while [ true ] ; do
	read -p $'\nDo you have a new command to enter? Enter "Y" for yes and "N" for no. \n' answer

	if [[ ${answer^^} == "Y" ]]; then
		read -p $'\nEnter command: \n' command
		read -p $'\nEnter description: \n' description
#		NumberOfCommands+=1
		BashCommands+=($command: $description)
	elif [[ ${answer^^} == "N" ]]; then
		break
	else
		echo "Invalid response, try again."
	fi

#	echo "${#BashCommands[@]}" >> ./ListOfBashCommands.txt
#	echo "${#NumberOfCommands[@]}" >> ./ListOfBashCommands.txt

	#BashCommands+=($command: $description)
#	for command in "${BashCommands[*]}"; do
#        	echo $command >> ./ListOfBashCommands.txt
#	done

done


for command in "${BashCommands[*]}"; do
	echo $command'\n' >> ./ListOfBashCommands.txt
done


while [ true ]; do
	read -p $'\nWould you like to see the contents of the file? Enter "Y" for yes and "N" for no. \n' response
	if [[ ${response^^} == "Y" ]]; then
		echo $'\nListOfBashCommands.txt'
		cat ./ListOfBashCommands.txt
		break
	elif [[ ${response^^} == "N" ]]; then
		break
	else
		echo "Invalid response, try again."
	fi
done

echo $'\nEnd of script.'



