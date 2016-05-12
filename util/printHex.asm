%include 'stringops.inc'
%include "hex_numbers.inc"

section .data
	num dd 4096
	newstr db 0xA

section .bss
	string resb 8

section .text
	global _start
		_start:
			print_hex num, string
			putchar 10
			;print_string _str, 10
			mov eax, 1
			int 0x80




