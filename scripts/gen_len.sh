#!/bin/bash

lines=`cat $1 | wc -l`

symb=""

curline=1
empty=1
zero=0



if [ -f $1.new ];
then
	cat /dev/null > $1.new
fi


while [ "$curline" -le "$lines" ]
do
	symb=`cat $1 | head -n $curline | tail -n 1 | cut -c -4`
	cat $1 | head -n $curline | tail -n 1 
	echo -e ""$symb"_len equ $ - "$symb""
	let "curline = curline+1"
	
#	let "empty = curline % 2"
#	if [ "$empty" -eq "$zero" ];
#	then
#		cat $1 | head -n $curline | tail -n 1 | sed -e "s/^.*i$/"$symb"_len equ $ - $symb/" >> $1.new
#	
#	else
#		cat $1 | head -n $curline | tail -n 1 >> $1.new
#		symb=`cat $1 | head -n $curline | tail -n 1 | cut -c -4`
#		let "curline = curline+1"
#	fi
done >> $1.new

