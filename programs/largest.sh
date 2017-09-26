#!/bin/bash
source prompt.sh
clear
#Declare the array size
declare -a a
echo "enter the size"
read n
for (( i=0;i<n;i++ ))
do 
read a[$i]
done
for (( i=0;i<n;i++ ))
do
#Dsiplay value of i
echo "${a[$i]}" 
done
#The first term is assigned to l
l=${a[0]}
for (( i=1;i<n;i++ ))
do
if [ $l -lt ${a[$i]} ]
then
#Read the value of l
l=${a[$i]}
fi
done
#Display the largest value
echo "largest is $l"
promptuser largest.sh

