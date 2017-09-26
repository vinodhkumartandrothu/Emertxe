#!/bin/bash
clear
#Assigning the value to temp
temp=1;
#Read the number n
echo "enter a number n"
read n
for (( row=1;row<n;row++ ))
do
for (( col=1;col<=row;col++ ))
do
#Print the temp value
echo -n "$temp"
#Temp is incremented
(( temp++ ))
done 
#Space is given while printing the numbers
echo " "
done
