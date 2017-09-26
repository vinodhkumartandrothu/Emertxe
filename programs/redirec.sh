#!/bin/bash
source prompt.sh 

echo "Before loop file contents"
#Redirecting to infinite.txt
echo hello > infinite.txt

#Dispaly infinite.txt
cat infinite.txt

echo "After loop file contents"

#Using tail and tee command
tail -f infinite.txt | tee -a infinite.txt

promptuser redirec.sh
