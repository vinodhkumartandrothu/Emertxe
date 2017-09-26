#!/bin/bash/

echo "Enter the first number (a) :"
read a
echo "Enter the second number (b) :"
read b
echo "Enter the third number (c) :"
read c

#using conditional & logical operators
if [ $a -gt $a -a $b -gt $c ]
then 
echo "A is the greatest"
elif [ $b -gt $a -a $b -gt $c ]
then
echo "B is the greatest"
elif [ $c -gt $a -a $c -gt $b ]
then
echo "C is the greatest"
else
echo "Invalid input"
fi
