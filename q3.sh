#!/bin/bash

if ! [ $# == 2 ]; then
	echo "Erorr: please enter exactly 2 arguments"
	exit
fi

if ! [[ -f $1 && -f $2 ]]; then
	echo "one of the files does not exist on your filesystem"
	exit
fi

sh_first=$(sha256sum $1)
sh_sec=$(sha256sum $2)

if [ "$sh_first" == "$sh_sec" ]; then
	echo "1"
else
	echo "2"
fi

