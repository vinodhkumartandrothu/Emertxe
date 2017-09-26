#!/bin/bash
source prompt.sh

echo "1.before locking"
chmod -R go+x,go+r,go+w $1
ls -l lock.sh

#Displaying after locking
echo "2.After locking"
chmod -R go-x,go-r,go-w $1
ls -l lock.sh


promptuser lock.sh
