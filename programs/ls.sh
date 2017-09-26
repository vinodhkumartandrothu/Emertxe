#!/bin/bash
source prompt.sh

#prints the number of arguements present in a array at one shot
a=$#
echo $a
declare -a arr={$@}
for((i=0; i<$a; i++))
do

#prints the file or directory according to the loop
echo list of  contents ${arr[$i]} is

#change directory to get inside into a file/directory
cd ./${arr[$i]}

echo *
#comes out of file or directory
cd ..
done
echo

promptuser ls.sh
