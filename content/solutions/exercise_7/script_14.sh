#!/bin/bash
DAY=$(date +%F)
for FILE in *.csv
 do
    mv $FILE ${DAY}-${FILE}
 done