%include '../include/hex_numbers.inc'
%include '../include/stringops.inc'




global cache_and_tlb_info

extern temp_string



section .text

%include 'cache_testreg.inc'

cache_and_tlb_info:
		push ebp
		mov ebp, esp
		mov eax, 2
		cpuid
		mov [nr_cpuid_exec], al
		print_string times_exec_cpuid_1, len1
		print_string times_exec_cpuid_2, len2
		print_hex nr_cpuid_exec, temp_string
		putchar 0xA
		
		print_string ah_reginfo, ah_reginfo_len
		cache_testreg ah
		bswap eax
		print_string al_maj_reginfo, al_maj_reginfo_len
		cache_testreg ah
		print_string ah_maj_reginfo, ah_maj_reginfo_len
		cache_testreg al

		print_string bl_reginfo, bl_reginfo_len
		cache_testreg bl
		print_string bh_reginfo, bh_reginfo_len
		cache_testreg bh
		bswap ebx
		print_string bl_maj_reginfo, bl_maj_reginfo_len
		cache_testreg bh
		print_string bh_maj_reginfo, bh_maj_reginfo_len
		cache_testreg bl

		print_string cl_reginfo, cl_reginfo_len
		cache_testreg cl
		print_string ch_reginfo, ch_reginfo_len
		cache_testreg ch
		bswap ecx
		print_string cl_maj_reginfo, cl_maj_reginfo_len
		cache_testreg ch
		print_string ch_maj_reginfo, ch_maj_reginfo_len
		cache_testreg cl

		print_string dl_reginfo, dl_reginfo_len
		cache_testreg dl
		print_string dh_reginfo, dh_reginfo_len
		cache_testreg dh
		bswap edx
		print_string dl_maj_reginfo, dl_maj_reginfo_len
		cache_testreg dh
		print_string dh_maj_reginfo, dh_maj_reginfo_len
		cache_testreg dl


		mov esp, ebp
		pop ebp
		ret


section .bss
	nr_cpuid_exec resb 1


section .data
	times_exec_cpuid_1 db 'The number of times the CPUID instruction must be executed in order to obtaiin a complete image '
	len1 equ $ - times_exec_cpuid_1
	times_exec_cpuid_2 db 'of the processors caching systems is '
	len2 equ $ - times_exec_cpuid_2

	ah_reginfo db '#####EAX register 8-15 bit',0x27,'s info#####', 0xA
	ah_reginfo_len equ $ - ah_reginfo

	al_maj_reginfo db '#####EAX register 16-23 bit',0x27,'s info#####', 0xA
	al_maj_reginfo_len equ $ - al_maj_reginfo

	ah_maj_reginfo db '#####EAX register 24-31 bit',0x27,'s info#####', 0xA
	ah_maj_reginfo_len equ $ - ah_maj_reginfo

	bl_reginfo db '#####EBX register 0-7 bit',0x27,'s info#####', 0xA
	bl_reginfo_len equ $ - bl_reginfo

	bh_reginfo db '#####EBX register 8-15 bit',0x27,'s info#####', 0xA
	bh_reginfo_len equ $ - bh_reginfo

	bl_maj_reginfo db '#####EBX register 16-23 bit',0x27,'s info#####', 0xA
	bl_maj_reginfo_len equ $ - bl_maj_reginfo

	bh_maj_reginfo db '#####EBX register 24-31 bit',0x27,'s info#####', 0xA
	bh_maj_reginfo_len equ $ - bh_maj_reginfo

	cl_reginfo db '#####ECX register 0-7 bit',0x27,'s info#####', 0xA
	cl_reginfo_len equ $ - cl_reginfo

	ch_reginfo db '#####ECX register 8-15 bit',0x27,'s info#####', 0xA
	ch_reginfo_len equ $ - ch_reginfo

	cl_maj_reginfo db '#####ECX register 16-23 bit',0x27,'s info#####', 0xA
	cl_maj_reginfo_len equ $ - cl_maj_reginfo

	ch_maj_reginfo db '#####ECX register 24-31 bit',0x27,'s info#####', 0xA
	ch_maj_reginfo_len equ $ - ch_maj_reginfo

	dl_reginfo db '#####EDX register 0-7 bit',0x27,'s info#####', 0xA
	dl_reginfo_len equ $ - dl_reginfo

	dh_reginfo db '#####EDX register 8-15 bit',0x27,'s info#####', 0xA
	dh_reginfo_len equ $ - dh_reginfo

	dl_maj_reginfo db '#####EDX register 16-23 bit',0x27,'s info#####', 0xA
	dl_maj_reginfo_len equ $ - dl_maj_reginfo

	dh_maj_reginfo db '#####EDX register 24-31 bit',0x27,'s info#####', 0xA
	dh_maj_reginfo_len equ $ - dh_maj_reginfo

%include '../include/cache_and_tlb.info'
