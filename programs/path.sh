#!/bin/bash

#To Display the path name and executables files in each path

source prompt.sh
echo $PATH
#counting the paths
count=`echo $PATH | sed 's/[^:]//g' | tr -d '\012' | wc -c`

#Displays the count
echo $count

for (( i = 1 ; i < $(($count + 2)) ; i++))
do

#Displays the path name
    eachPath=`echo $PATH | cut -d ":" -f${i}`
    echo $eachPath

#Displays the filecount present in each path
    execfilecount=`find $eachPath -executable | wc -l`
    echo $execfilecount


done

promptuser path.sh

