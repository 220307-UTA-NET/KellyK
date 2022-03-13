#usr/bin/bash


declare -A BashCommands
#BashList=()

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

#	BashList+=("$command:$description")
	BashCommands[$command] = $description
	#BashList+=("{BashCommands[$command]}:{BashCommands[$description]}"}

	for key in BashCommands[$command];do 
		

done


for command in ${BashList[@]}; do
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



