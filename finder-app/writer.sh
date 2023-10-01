#!/bin/bash

if [ $# -eq 2 ]; then
	writefile=$1
	writestr=$2
else
	echo "Number of argument error!"
	exit 1
fi

writedir=$(dirname "$1")

if ! [ -d ${writedir} ]; then
	mkdir -p ${writedir}
fi

echo ${writestr} > ${writefile}

