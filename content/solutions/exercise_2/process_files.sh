#!/bin/bash
mv landing_area/BACKUP_*.parquet structured_area/BACKUP/parquet
mv landing_area/BACKUP_*.{mysql,bkp} structured_area/BACKUP/mysql_bkp

mv landing_area/file_C* structured_area/file/C
mv landing_area/file_B* structured_area/file/B
mv landing_area/file_A* structured_area/file/A

mv landing_area/201?_[1-6]_* structured_area/timeseries/before_2020/months_1_to_6
mv landing_area/201?_[7-9]_* structured_area/timeseries/before_2020/months_7_to_12
mv landing_area/201?_1[0-2]_* structured_area/timeseries/before_2020/months_7_to_12
mv landing_area/202?_{1,3,5,7,9,11}_* structured_area/timeseries/2020_and_after/odd_months
mv landing_area/202?_{2,4,6,8,10,12}_* structured_area/timeseries/2020_and_after/even_months

mv landing_area/* structured_area/other