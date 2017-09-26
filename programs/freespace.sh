#!/bin/bash
source prompt.sh

#Counting the size and available space 
count=`df --output=size,avail | wc -l`
echo $count
for (( i = 2; i <= $count; i++ ))
do

#Displaying the used and available space
    used=`df --output=used | sed -n "$i"p`
    available=`df --output=avail | sed -n "$i"p`

    fileSys=`df --output=source | sed -n "$i"p`

#calculating the used and available space   
    final=$(($(($(($available*100))))/$(($available+$used))))
#echo $final
done    

    if [ $final -ge 90 ]
    then
        echo "$fileSys has free space less than 10%"

else
echo "there is no free space in directory"    
fi

promptuser freespace.sh
