#!/bin/bash
 
echo "enter the number a"
read a

case $a in
1) echo value of x is one. ;;
2) echo value of x is two. ;;
3) echo value of x is three. ;;
*) echo unrecognized value. ;;
esac


