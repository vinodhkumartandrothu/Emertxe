#!/bin/bash
#fibonacci generation
clear
echo "enter n value"
read n
f1=0
f2=1
for (( i=0;i<n;i++ ))
do
f=`expr $f1 + $f2`
f1=$f2
f2=$f
done
echo -n 

