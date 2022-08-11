#!/bin/bash

file="/etc/shells"


#making reggex to filter the shell starting with /usr
#pipeline it to awk command to print the last column
# "$NF" is used to print the last column of filtered data

grep -Eo '^/usr.*' $file | awk  -F "/" '{print $NF}'


