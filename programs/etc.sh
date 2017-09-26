#!/bin/bash
#To display the largest and shortest names in etc/passwd
source prompt.sh
clear
#Using cat and cut commands to find the usernames
declare -a a=(`cat ../../../etc/passwd | cut -d ':' -f 1`)
#Acessing the values to x
x=${#a[@]}
#Using for loop
#for ((i=0;i<x;i++))
#do 
#echo "${a[$i]}"
#done
#for ((i=0;i<x;i++))
#do
#Assigning the array values to the variable l
#l=${#a[$i]}
#Display the largest values and username
#echo "${a[$i]}=$l"
#done
#Assigning the first term of the array to k & m
k=${#a[0]}
m=${#a[0]}
for((row=1;row<x;row++))
do
#Assigning the remaining variables of array to l
l=${#a[row]}
#Using if loop
if [ $k -gt $l ]
then
#Swapping the k & l values
k=`expr $k + $l`
l=`expr $k - $l`
k=`expr $k - $l`
fi
done
#Display K value
echo "$k"
for((col=0;col<x;col++))
do
#Assigning the array values of j to n 
n=${#a[col]}
if [ $m -lt $n ]
then
#Swapping the m and n values
m=`expr $m + $n`
n=`expr $m - $n`
m=`expr $m - $n`
fi
done
#Display m value
echo "$m"

for((row=0;row<x;row++))
do
l=${#a[row]}
if [ $k == $l ]
then
#Display the smallest number
echo smallest number is "${a[row]}"
fi
done
for ((col=0;col<x;col++))
do
n=${#a[col]}
if [ $m == $n ]
then
#Display the largest number
echo largest user name is "${a[col]}"
fi
done
promptuser etc.sh
