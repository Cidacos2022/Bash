#!/bin/bash
files= echo `ls -R $HOME`
for f in `ls -R $HOME`
do
	echo "$f"
done