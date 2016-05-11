#!/bin/bash

nasm -f elf printHex.s
ld -m elf_i386 printHex.o -o printhex
./printhex
