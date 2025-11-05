#!/bin/bash

#echo $#
if [ $# -ne 1 ]; then
  echo 'usage> gac "commit message"'  
  exit
fi;

MSG=$1

git add -A

git commit -m "$MSG"

git push
