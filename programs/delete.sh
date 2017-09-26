#!/bin/bash
source prompt.sh
clear
#Using sed command to delete the lines
sed '/./!d' delete.txt
promptuser delete.sh
