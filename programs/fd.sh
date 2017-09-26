#!/bin/bash
#if the given path is directory
path=(../SED)
if [ -d $path ]
then
	#get the capital lettered name
	newName=`echo $path | tr [:lower:] [:upper:]`

    #check if newName file/directory path exists
	if [ -e $newName ]
	then
		echo "Error: $newName file/directory  exists. Will not rename"
		exit 1
	else
		mv "$path" "$newName"		
	fi
#if the given path is file
elif [ -f $path ]
then
	#get the small lettered name
	newName=`echo $path | tr [:upper:] [:lower:]`

	#check if newName file/directory path exists 
	if [ -e $newName ]
	then
		echo "Error: $newName file/directory exists. Will not rename"
		exit 1
	else
		mv "$path" "$newName"		
	fi
fi
