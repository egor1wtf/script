#!/bin/bash  

value=`cat access.log | awk -F ';' '$3 == 500' | sort | uniq -c | sort -nr | head -n 10 | awk -F ';' '{print $1}' | tac`
echo "$value"
