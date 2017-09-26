#!/bin/bash
var1=$1
var2=$(($1+$2))
sed -n "${var1},${var2}"p $file
