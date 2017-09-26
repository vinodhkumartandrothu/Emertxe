#!/bin/bash
source prompt.sh

#using df command and awk command to print the used space and redirecting to some other file
df $1 | awk '/[0-9]%/{print $(NF-1)}' > f.sh

#Dispalys the used space
echo -n "$1 `cat f.sh` used with"
#Dispalying the available space
df $1 | awk '/[0-9]%/{print $(NF-2)}' >f.sh
echo -n " `cat f.sh` free kb"
echo

promptuser fildir.sh
