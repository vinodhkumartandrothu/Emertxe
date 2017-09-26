#!/bin/bash
#To check user is present or not
 
source prompt.sh

#Using piping and cut command
declare -a a=(`cat ../../../etc/passwd | cut -d ':' -f 1`)
#Accessing all the variables to x
x=${#a[@]}
#Display x
echo $x

for((i=0;i<x;i++))
do 
echo "${a[$i]}"
done

#Displaying and entering the search elements
echo "enter the search elements"
read username

for((i=0;i<x;i++))
do
if [ $username = ${a[$i]} ]
then
k=1
fi 
done
if [ $k -eq 1 ]
then
echo "username is present"
else
echo "username is not present"
fi

promptuser user.sh
