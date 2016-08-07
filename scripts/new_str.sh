#!/bin/bash

empty=1
curline=1
one=1

lines=`cat $1 | wc -l`


if [ -f $1.new ];
then
	cat /dev/null > $1.new
fi

while [ "$curline" -le "$lines" ]
do
	let "empty = curline % 2"
	if [ "$empty" -eq "$one" ];
	then
		cat $1 | head -n $curline | tail -n 1 | sed -e 's/$/, 0xA/' >> $1.new
		let "curline = curline + 1"
	else
		cat $1 | head -n $curline | tail -n 1 >> $1.new
		let "curline = curline + 1"
	fi

done

mv $1.new $1

