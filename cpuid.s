%include 'include/hex_numbers.inc'
%include 'include/stringops.inc'

extern get_highest_eax_input
extern highest_eax_input

section .bss
	temp_string resb 8 ;for printing hex-numbers

section .text
	global _start
		_start:	call get_highest_eax_input
				print_hex highest_eax_input, temp_string
				putchar 10
				mov eax, 1
				int 0x80
