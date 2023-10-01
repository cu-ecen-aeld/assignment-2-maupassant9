#!/bin/sh

if [ $# -eq 2 ]; then
	filesdir=$1
	searchstr=$2
else
	echo "Needs 2 parameters!!!"
	exit 1
fi

if [ -d ${filesdir} ]; then
	#do something
	X=$(find -L ${filesdir} -type f | wc -l)
	Y=$(find -L ${filesdir} -type f -exec cat {} \; | grep ${searchstr} | wc -l)
	echo  "The number of files are $X and the number of matching lines are $Y"
	exit 0
else
	echo "Not a valid directory!!"
	exit 1
fi

