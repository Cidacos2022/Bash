#!/bin/bash
FILE=$1
if test -f "$FILE"; 
	then
    	echo "$FILE exists."
		n=1
		while read line; do
		echo "$line"
		printf "\n"
		n=$((n+1))
		done < $FILE
	else
	echo "$FILE does not exists."
fi