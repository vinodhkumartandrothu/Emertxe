#!/bin/bash

clear
#Declare the array size
declare -a a
echo "enter the elements"
read n
for((i=0;i<n;i++))
do
#Read the i value
read a[$i]
done
#The numbers before sorting
echo "before sorting"
for((i=0;i<=n;i++))
do
#Dispaly the i value
echo "${a[$i]}"
done
for (( i=0;i<=n-1;i++ ))
do
for (( j=i+1;j<=n;j++ ))
do
if [ ${a[$i]} -gt ${a[$j]} ] 
then
#Assign the values to t
t=${a[$i]}
a[$i]=${a[$j]}
a[$j]=${t}
echo "${a[$i]}"
fi
done
done
#The numbers after sorting
echo "after sorting"
for((i=0;i<n;i++))
do
#Display the result
echo "${a[$i]}"
done					
