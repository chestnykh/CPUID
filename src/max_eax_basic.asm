;%include 'include/stringops.inc'
;%include 'include/hex_numbers.inc'

global get_max_eax_basic
global max_eax_basic
global maxeax_basic_str
global maxeax_basic_strlen

get_max_eax_basic:
			push ebp
			mov ebp, esp
			xor eax, eax
			cpuid
			mov [max_eax_basic], eax	
			mov esp, ebp
			pop ebp
			ret


section .bss
	max_eax_basic resd 1

section .data
	maxeax_basic_str db 'Maximum valid EAX value for CPUID to determine basic CPU info = '
	maxeax_basic_strlen equ $ - maxeax_basic_str
