#!/bin/bash
DAY=$(date +%F)
echo "Pleace enter the file extension of the files you want to rename:"
read EXTENSION
echo "Pleace enter the prefix you want to append to files names: (just press enter for $DAY)"
read USER_PREFIX

if [ -z $USER_PREFIX ]; then
  PREFIX=$DAY
else
  PREFIX=$USER_PREFIX
fi

if [ -f *.$EXTENSION ]; then
  for NAME in *.$EXTENSION; do
    echo "Renaming $NAME to ${PREFIX}-${NAME}"
    mv $NAME ${PREFIX}-${NAME}
  done
else
  echo "No files found here with the .$EXTENSION extension."
fi