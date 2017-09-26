#!/bin/bash

declare -a unix=('Debian' 'redhat' 'ubuntu')
echo "number of elements in an array: $ { #unix[@] }"
#echo "enter the values in array"
#method1
echo "printing contents of array at one shot: ${unix[@]}"
#method2
echo "printing contents of array at one shot: ${unix[*]}"
read -a unix
for ((i=0; i<${#unix[@]}; i++))
do
 echo ${unix[$i]}
done
