#!/bin/bash
file1=$1
file2=$2
if [ -z "$file1" ]; then
	exit 1
fi
if [ -z "$file2" ]; then 
        exit 1
fi
if [ -f !"$file1" ]; then
	echo "file 1 does not exist"
        exit 2
fi
if [ -f !"$file2" ]; then
       	echo "file 2 does not exist"
        exit 2
fi
num_of_inputs=$#
if [ $num_of_inputs -ne 2 ]; then 
        echo "Error: two parameters are required"
        exit
fi

output1=$(sha256sum $file1 |cut -f1 -d" ")
output2=$(sha256sum $file2 |cut -f1 -d" ")

if [ $output1 == $output2 ]; then
	echo 0
else
	echo 1
fi
