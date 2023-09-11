#!/bin/bash
FILEPATH="$(pwd)/passwords"
echo $FILEPATH
if [ -e "$FILEPATH" ]
  then
      echo "The passwords are loaded."
      if [ -w "$FILEPATH" ]
        then
          echo "You have permissions to edit the system passwords"
        else
          echo "You do NOT have permissions to edit the system passwords"
      fi
  else
      echo "The passwords aren't loaded."
fi
