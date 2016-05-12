;%include 'include/stringops.inc'
;%include 'include/hex_numbers.inc'

global get_highest_eax_input
global highest_eax_input


get_highest_eax_input:
			push ebp
			mov ebp, esp
			xor eax, eax
			cpuid
			mov [highest_eax_input], eax	
			mov esp, ebp
			pop ebp
			ret


section .bss
	highest_eax_input resd 1
