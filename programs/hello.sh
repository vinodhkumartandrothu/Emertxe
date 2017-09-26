#!/bin/bash
#To Display hello script

echo "Hello"
echo "todays date is :"
 date
#using date and cut command adn redirecting to temp
 date | cut -d ' ' -f 4 | cut -d ':' -f 1 > temp
temp=$(cat temp)

#Displaying temp
echo "$temp"

if [ $temp -ge 1 -a $temp -le 12 ]
then
echo "Good morning"
elif [ $temp -ge 12 -a  $temp -lt 16 ]
then
echo "Good afternoon"
elif [ $temp -ge 16 -a  $temp -lt 19 ]
then
echo "good evening"
elif [ $temp -ge 19 -a $temp -le 24 ]
then
echo "good night"
fi

