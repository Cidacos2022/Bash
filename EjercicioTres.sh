#!/bin/bash
for var in "$@"
do
	fileType="${var##*.}"
	if [ "$fileType" == "gz" ] 
	then
		tar -xvzf "$var"
	elif [ "$fileType" == "tar" ] 
	then
		tar -xvf "$var"
	elif [ "$fileType" == "bz2" ] 
	then
		tar -xvjf "$var"
	else
	echo "El archivo no se puede descomprimir"
	fi
done
