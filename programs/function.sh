#!/bin/bash

#function definition 
function sum()
{
 x=`expr $1 + $2`
#echo $x
}
 #calling the function 
sum 5 3
echo "the sum of 4 and 7 is `sum 4 7`"
