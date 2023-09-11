#!/bin/bash
FILE=$1
if [ -e "$FILE" ]
  then

    if [ -f "$FILE" ]
      then
        echo "$FILE is a regular file"
        exit 0
    elif [ -d "$FILE" ]
      then
        echo "$FILE is a directory"
        exit 1
    else
        echo "$FILE is another type of file"
        exit 2
    fi

    ls -l $FILE

else
  echo "The filepath $FILE doesn't exists."
  exit 2
fi