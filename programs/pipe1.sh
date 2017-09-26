#!/bin/bash
#Using redirection command to print infinite lines
source prompt.sh
clear
#using for loop
for (( i=1;i<=200;i++ ))
do 
echo "line number : $i" >> output
done
promptuser pipe1.sh
