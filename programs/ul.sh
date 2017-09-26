#!/bin/bash
#Select the option
echo "1.lower to upper"
echo "2.upper to lower"
read choice

#using case statement
case $choice in
 
#Using cat command and tr command

 1)cat $1 | tr [:lower:] [:upper:];;
 
 2)cat $1 | tr [:upper:] [:lower:];;
 
 
 *)esac
