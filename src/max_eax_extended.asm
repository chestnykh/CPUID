global get_max_eax_extended
global max_eax_extended
global maxeax_extended_str
global maxeax_extended_strlen

get_max_eax_extended:
			push ebp
			mov ebp, esp
			mov eax, 0x80000000
			cpuid
			mov [max_eax_extended], eax	
			mov esp, ebp
			pop ebp
			ret


section .bss
	max_eax_extended resd 1

section .data
	maxeax_extended_str db 'Maximum valid EAX value for CPUID to determine extended CPU info = '
	maxeax_extended_strlen equ $ - maxeax_extended_str
