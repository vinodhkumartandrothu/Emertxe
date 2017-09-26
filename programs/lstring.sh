#!/bin/bash
source prompt.sh
#Declare the array 
declare -a arr=("$@")
#Using for loop
for ((row=0; row<$#; row++))
do 
#Assigning the array values of i to variable l
l=${#arr[$i]}
#Display the length of the string
echo length of string is "${arr[i]}=$l"
done
promptuser lstring.sh

