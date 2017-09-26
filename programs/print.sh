#!/bin/bash
#To print the lines

source prompt.sh

                 
#Using sed to capture the number of lines that we are displaying


sed -n "$1,$2 p" $3
promptuser print.sh

