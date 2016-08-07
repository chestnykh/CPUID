#!/bin/bash


cat $1 | sed -e 's/^/_/' -i $1
cat $1 | sed -e "s/^\(.\{5\}\)/\1db \\'/" -i $1
cat $1 | sed -e "s/$/\\'/" -i $1 
cat $1 | sed -e 's/$/, 0xA/g' -i $1
