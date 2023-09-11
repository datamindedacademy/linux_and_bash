#!/bin/bash
ls -al /bin | head -n 10 | tail -n 1 | awk -F" " '{print $9}' > output.log \
&& ls -al /bin | tail -n 10 | head -n 1 | awk -F" " '{print $9}' >> output.log