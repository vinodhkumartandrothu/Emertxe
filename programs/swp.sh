#!/bin/bash
#To delete all .swp files in your system
source prompt.sh
clear
#Using find command to delete the .swp files
find . -type f -name ".*.swp" -exec rm -f {} \;
promptuser swp.sh
