function GuessFileCount {
	cont=true

	while [[ $cont == true ]]
	do
		echo 'guess number of files in current directory:'
		read count
		fileCount=$(ls | wc -l | xargs)

		if [[ $count -lt $fileCount ]]
		then
			echo "your guess number is too low"
		elif [[ $count -gt $fileCount ]]
		then
			echo "your guess number is too high"
		else
			echo "Congragulation! Your guess number is correct"
			cont=false
		fi
	done
}

GuessFileCount
