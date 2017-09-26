#!/bin/bash
source prompt.sh
clear
declare -a a
echo "enter the fib series"
read n
a[0]=0
a[1]=1
#count=1
for (( i=2;i<n;i++ ))
do
a[$i]=`expr ${a[$[i-1]]} + ${a[$[i-2]]}`
done
for (( i=0;i<n;i++ ))
do
echo "${a[$i]}"
done
promptuser fib1.sh
