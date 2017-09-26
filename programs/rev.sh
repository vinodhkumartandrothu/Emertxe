#!/bin/bash
#Assigning value to rev 
rev=0
#Read the number n
echo "enter number n"
read n
while [ $n -gt 0 ]
do
#Assigning the arthimetic calculations to r,v,rev
r=`expr $n % 10`
v=`expr $rev \* 10`
rev=`expr $v + $r`
n=`expr $n / 10`
done
#Print the value in rev
echo -n "$rev"
