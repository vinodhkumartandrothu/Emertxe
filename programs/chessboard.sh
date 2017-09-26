#!bin/bash
source prompt.sh
#To Display chess board

#using for loop
 for((row=0;row<8;row++))
 do
  for((col=0;col<8;col++))
  do
#using if loop and evalauting the expression
  if [ `expr $(($row+$col)) % 2` -eq 0 ]
     then
#Displaying the white background
           echo -e -n "\033[47m  "         
  else
#Displaying the Black background'''
         echo -e -n "\033[40m  "      
  fi
    done
   echo                                  # move to next line
 
 done
#After 8 columns it will come to normal color
  echo -e "\033[0m "
promptuser chessboard.sh
