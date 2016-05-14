%include '../include/hex_numbers.inc'
%include '../include/stringops.inc'

extern get_max_eax_basic
extern max_eax_basic
extern maxeax_basic_str
extern maxeax_basic_strlen
extern get_max_eax_extended
extern max_eax_extended
extern maxeax_extended_str
extern maxeax_extended_strlen

section .bss
	temp_string resb 8 ;for printing hex-numbers

section .text
	global _start
		_start:	call get_max_eax_basic
				print_string maxeax_basic_str, maxeax_basic_strlen
				print_hex max_eax_basic, temp_string
				putchar 10
				call get_max_eax_extended
				print_string maxeax_extended_str, maxeax_extended_strlen
				print_hex max_eax_extended, temp_string
				putchar 10
				mov eax, 1
				int 0x80
