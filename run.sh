#!/bin/bash

if [ -f Makefile ];
then
	make
	./cpuid
fi
