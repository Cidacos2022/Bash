#!/bin/bash
search_dir=$1
numeroTotal=0
numeroFile=0
for entry in "$search_dir"/*
do
	SUB='.txt'
	if [[ "$entry" == *"$SUB"* ]]; 
	then
	  line=$(head -n 3 $entry)
	  echo "$line"
	  numeroFile=`echo "$line" | grep -o "meme" | wc -l`
	  numeroTotal=$((numeroTotal + numeroFile))
	  numeroFile=0
	fi
done
echo "$numeroTotal"
