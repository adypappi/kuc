#!/usr/bin/env bash
#
# List recursively given folder subfolders and files. Default folder to list is /tmp
folder=${1:-/tmp}
IFS_OLD=$IFS; 
IFS=;
for fl in $(ls -Ra -1 ${folder} 2>/dev/null | sed -r 's|^\s*$|;|g' | grep -Pv "\./|\.\./"  | xargs)
do 
  IFS=$OLD_IFS
  ## The current folder FQP end with ':'  the rest if the contentn of current folder
  ## The subfolder end with /
  echo "$fl" 
  IFS=;
done 
IFS=$OLD_IFS
