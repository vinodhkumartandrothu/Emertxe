#!/bin/bash
echo "1.before replacing"
echo "2.after replacing"
 read option

case $option in

 1)echo $1 | sed -d 6,7 del.c

 *)esac

 
 

