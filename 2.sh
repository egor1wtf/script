#!/bin/bash  

value=`cat access.log | awk -F ';' '$3 == 500' | awk -F ';' '{print $1}' | uniq -c | head -n 10 | sort`
echo "$value"
