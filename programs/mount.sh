#!/bin/bash
export MOUNT=$1

if grep -qs $MOUNT /proc/mounts
 then
  echo "It's mounted."
 df -h $1
else
  echo "It's not mounted."
 
  mount $MOUNT
fi
