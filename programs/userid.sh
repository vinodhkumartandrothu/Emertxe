#!/bin/bash
source prompt.sh
#using cat and cut commands 

declare -a a=(`cat ../../../etc/passwd | cut -d ':' -f 3`)

#Display 
x=${#a[@]}

echo $x

count=0
n=$#


#using case statement
case $n in

#Give the arguements 
2)for ((i=0;i<x;i++))
 do
if [ ${a[$i]} -ge $1 -a ${a[$i]} -le $2 ]
then
((count++))
fi 
done;;
0)for((i=0;i<x;i++))
do
if [ ${a[$i]} -ge 500 -a ${a[$i]} -le 10000 ]
then
((count++))
fi
done;;
*)echo "invalid" ;;
esac
echo "total count of user ID between 500 and 10000 is: $count"

promptuser userid.sh
