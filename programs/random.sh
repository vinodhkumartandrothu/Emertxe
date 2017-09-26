#!/bin/bash
source prompt.sh

#To generate a random 8 character password
cat /dev/urandom |  tr -dc 'a-zA-Z0-9-@' | fold -w 8 | head -n 5 

promptuser random.sh
