#!/bin/bash
source prompt.sh
clear
#operator1=$1
#operator3=$3
echo enter op
read operation
#operand=$2
case $operation in
1) echo "math"=$((`bc <<< $1+$2`)) ;;
2) echo "math"=$((`bc <<< $1-$2`)) ;;
3) echo "math"=$((`bc <<< $1*$2`)) ;;
4) echo "math"=$((`bc <<< $1/$2`)) ;;
*) echo "math"=exit
esac
promptuser ac.sh
