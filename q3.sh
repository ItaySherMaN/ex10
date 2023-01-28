#!/bin/bash 


echo "Input path 1"
read p1

if ! [ -f ${p1} ]; then
        echo "The first file doesn't exist"
        exit 1
fi

echo "Input path 2"
read p2

if ! [ -f ${p2} ]; then
        echo "The second file doesn't exist"
        exit 1
fi

first=$(sha256sum ${p1} | cut -d " " -f 1)
second=$(sha256sum ${p2} | cut -d " " -f 1)

if [ ${first} == ${second} ]; then 
	echo "The files are the same"
	exit 0 
else 	
	echo "The files are not the same"
	exit 1
fi
