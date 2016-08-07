%include '../include/hex_numbers.inc'

extern get_max_eax_basic
extern max_eax_basic
extern maxeax_basic_str
extern maxeax_basic_strlen
extern get_max_eax_extended
extern max_eax_extended
extern maxeax_extended_str
extern maxeax_extended_strlen
extern get_vendor_id
extern vendor_id
extern dump_register_bits
extern leaf_01_ecx_info
extern cache_and_tlb_info

global temp_string


section .bss
	temp_string resb 8 ;for printing hex-numbers

section .text
	global _start
		_start:

				call get_max_eax_basic
				putchar 0xA

				call get_max_eax_extended
				putchar 0xA

				call get_vendor_id
				putchar 0xA

				call leaf_01_ecx_info

				call cache_and_tlb_info
				putchar 0xA

				mov eax, 1
				int 0x80
