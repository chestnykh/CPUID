%include '../include/hex_numbers.inc'
%include '../include/stringops.inc'

extern dump_register_bits
global leaf_01_info

leaf_01_info:
				push ebp
				mov ebp, esp
				mov eax, 1
				cpuid
				push eax
				push dword 0
				push dword 3
				print_string stepping, steplen
				call dump_register_bits
				putchar 0xA
				add esp, 8
				push dword 4
				push dword 7
				print_string model, modlen
				call dump_register_bits	
				putchar 0xA
				add esp, 8
				push dword 8
				push dword 11
				print_string family, famlen
				call dump_register_bits	
				putchar 0xA
				add esp, 8
				push dword 12
				push dword 13
				print_string cpu_type, cpu_typelen
				call dump_register_bits	
				putchar 0xA
				add esp, 8
				push dword 16
				push dword 19
				print_string extended_model, extended_model_len
				call dump_register_bits	
				putchar 0xA
				add esp, 8
				push dword 20
				push dword 27
				print_string extended_family, extended_family_len
				call dump_register_bits	
				putchar 0xA
				add esp, 8
				mov esp, ebp
				pop ebp
				ret




section .data
	stepping db 'Stepping: '
	steplen equ $ - stepping

	model db 'Model: '
	modlen equ $ - model

	cpu_type db 'CPU Type: '
	cpu_typelen equ $ - cpu_type

	family db 'Family: '
	famlen equ $ - family

	extended_model db 'Extended model: '
	extended_model_len equ $ - extended_model

	extended_family db 'Extended family: '
	extended_family_len equ $ - extended_family
