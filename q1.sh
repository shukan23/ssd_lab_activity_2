#! bin/bash

n=$(cat $1 | wc -l)

if [ $((n%2)) -eq 0 ]
then
	line=$((n/2))
else
	line=$(((n/2)+1))
fi

cat $1 | awk NR==$line


