#!/bin/bash
#Read the number n
echo "enter the number n"
read n
for (( row=1;row<=n;row++ ))
do
for (( col=1;col<=row;col++ ))
do 
#Print the column
echo -n "$col"
done
echo " "
done
