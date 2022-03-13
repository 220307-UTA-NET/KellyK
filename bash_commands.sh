#usr/bin/bash


BashCommands=()

while [ true ] ; do
	read -p $'\nDo you have a new command to enter? Enter "Y" for yes and "N" for no. \n' answer

	if [[ ${answer^^} == "Y" ]]; then
		read -p $'Enter command: \n' command
		read -p $'\nEnter description: \n' description
	elif [[ ${answer^^} == "N" ]]; then
		break
	else
		echo "Invalid response, try again."
	fi

#	BashCommands+=("$command:$description")
	BashCommands+=("$command:$description")
done


for command in ${BashCommands[@]}; do
	echo $command >> ./ListOfBashCommands.txt
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



