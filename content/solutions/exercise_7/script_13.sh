#!/bin/bash
function file_count()
 {
   local DIRECTORY=$1
   COUNT_FILE=$(ls $DIRECTORY | wc -l)
   echo "$DIRECTORY :"
   echo "$COUNT_FILE"
 }
file_count /etc
file_count /var
file_count /usr/bin