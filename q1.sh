#!/bin/bash

file=$1

num=$(wc -l < $file)

if [ $(($num % 2)) == 0 ]
then
   num=$((num / 2))
else
   num=$((num / 2))
   num=$((num + 1))
fi


awk -v num1="$num" '{if(NR==num1)print $0}' $file
