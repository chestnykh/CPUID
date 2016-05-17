%include '../include/stringops.inc'

global get_vendor_id
global vendor_id

;include this function implementation in get_max_eax_basic
get_vendor_id:
	push ebx
	mov ebp, esp
	xor eax, eax
	cpuid 
	mov [vendor_id]  , ebx
	mov [vendor_id+4], edx
	mov [vendor_id+8], ecx
	print_string vendorstr, vendorstr_len
	print_string vendor_id, 12	
	mov esp, ebp
	pop ebx
	ret

section .bss
	vendor_id resd 3


section .data
	vendorstr db 'Vendor ID: '
	vendorstr_len equ $ - vendorstr
