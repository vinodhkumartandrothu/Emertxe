#!/bin/bash
clear
echo "enter the string"
read a

#Accessing the number
count=${#a[0]}
echo $count
#Acessing the value to val
val=${a[0]:0:count-1}
echo $val
#Accessing the values to oper
oper=${a[0]:count-1:1}
echo $oper 

#Storing the value in store and adding the number
store=${val[0]:0:1}
echo $store
for(( i=1; i<$(($count-1)); i++ ))
do
c=${a[0]:i:1}
#Adding the store value with c
store=$(($store$oper$c))
done
#Display store value
echo $store

