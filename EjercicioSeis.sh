#!/bin/bash
entries=($(shuf -i 1-50 -n 5))

echo "press 1 if you wanna echo, in other cases it will be stored in a file"
read respuesta

if [ "$respuesta" == "1" ] 
    then 
    echo "${entries[@]}"
    else
	echo "${entries[@]} hora generados $(date)" >> results.txt
fi