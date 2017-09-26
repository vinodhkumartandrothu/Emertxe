#!/bin/bash
source prompt.sh

#Recursive function to print each arguement
#Accessing the elements to a
a=( $@ )
i=0
n=${#a[@]}
echo $n
function rec( )
{
i=$(( $i + 1 ))
echo $1
if [ $i -le $n ]
then
rec ${a[$i]}
fi
}
rec ${a[$i]}

promptuser recursion.sh
