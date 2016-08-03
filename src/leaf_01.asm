%include '../include/hex_numbers.inc'
%include '../include/stringops.inc'

extern dump_register_bits
global leaf_01_ecx_info

leaf_01_ecx_info:
				push ebp
				mov ebp, esp
				

				mov eax, 1
				cpuid

				;************************** 
				;		eax
				;**************************
		%rep 10
				putchar 0x23
		%endrep	
				putchar 0xA

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
				add esp, 12

				;************************** 
				;		ebx
				;**************************
		%rep 10
				putchar 0x23
		%endrep	
				putchar 0xA

				push ebx

				push dword 0
				push dword 7
				print_string brand_index, brand_index_len
				call dump_register_bits
				putchar 0xA
				add esp, 8

				push dword 8
				push dword 15
				print_string _clflush, _clflush_len
				call dump_register_bits
				putchar 0xA
				add esp, 8

				push dword 16
				push dword 23
				print_string logical_cpus, logcpu_len
				call dump_register_bits
				putchar 0xA
				add esp, 8

				push dword 24
				push dword 31
				print_string apic, apic_len
				call dump_register_bits
				putchar 0xA
				add esp, 12

				;************************** 
				;		ecx
				;**************************
		%rep 10
				putchar 0x23
		%endrep	
				putchar 0xA
				print_string fflags_entry, fflags_entry_len
				putchar 0xA	
				;push ecx

				test ecx, 1b
				print_string sse3, sse3_len
				jz sse3_0
				jmp sse3_1
sse3_0:			putchar 0x30
				jmp sse3_next
sse3_1:			putchar 0x31
sse3_next:		putchar 0xA
					
				test ecx, 10b
				print_string pclmuldq, pclmuldq_len
				jz pclmuldq_0
				jmp pclmuldq_1
pclmuldq_0:		putchar 0x30
				jmp pclmuldq_next
pclmuldq_1:		putchar 0x31
pclmuldq_next:	putchar 0xA

				test ecx, 100b
				print_string dtes64, dtes64_len
				jz dtes64_0
				jmp dtes64_1
dtes64_0:		putchar 0x30
				jmp dtes64_next
dtes64_1:		putchar 0x31
dtes64_next:	putchar 0xA

				test ecx, 1000b
				print_string monitor_mwait, monitor_mwait_len
				jz monitor_0
				jmp monitor_1
monitor_0:		putchar 0x30
				jmp monitor_next
monitor_1:		putchar 0x31
monitor_next:	putchar 0xA

				test ecx, 10000b
				print_string dscpl, dscpl_len
				jz dscpl_0
				jmp dscpl_1
dscpl_0:		putchar 0x30
				jmp dscpl_next
dscpl_1:		putchar 0x31
dscpl_next:		putchar 0xA

				test ecx, 100000b
				print_string vmx, vmx_len
				jz vmx_0
				jmp vmx_1
vmx_0:			putchar 0x30
				jmp vmx_next
vmx_1:			putchar 0x31
vmx_next:		putchar 0xA

				test ecx, 1000000b
				print_string smx, smx_len
				jz smx_0
				jmp smx_1
smx_0:			putchar 0x30
				jmp smx_next
smx_1:			putchar 0x31
smx_next:		putchar 0xA

				test ecx, 10000000b
				print_string eist, eist_len
				jz eist_0
				jmp eist_1
eist_0:			putchar 0x30
				jmp eist_next
eist_1:			putchar 0x31
eist_next:		putchar 0xA

				test ecx, 100000000b
				print_string tm2, tm2_len
				jz tm2_0
				jmp tm2_1
tm2_0:			putchar 0x30
				jmp tm2_next
tm2_1:			putchar 0x31
tm2_next:		putchar 0xA

				test ecx, 1000000000b
				print_string ssse3, ssse3_len
				jz ssse3_0
				jmp ssse3_1
ssse3_0:		putchar 0x30
				jmp ssse3_next
ssse3_1:		putchar 0x31
ssse3_next:		putchar 0xA

				test ecx, 10000000000b
				print_string cnxtid, cnxtid_len
				jz cnxtid_0
				jmp cnxtid_1
cnxtid_0:		putchar 0x30
				jmp cnxtid_next
cnxtid_1:		putchar 0x31
cnxtid_next:	putchar 0xA

				test ecx, 1000000000000b
				print_string fma, fma_len
				jz fma_0
				jmp fma_1
fma_0:			putchar 0x30
				jmp fma_next
fma_1:			putchar 0x31
fma_next:		putchar 0xA

				test ecx, 10000000000000b
				print_string cx16, cx16_len
				jz cx16_0
				jmp cx16_1
cx16_0:			putchar 0x30
				jmp cx16_next
cx16_1:			putchar 0x31
cx16_next:		putchar 0xA

				test ecx, 100000000000000b
				print_string xtpr, xtpr_len
				jz xtpr_0
				jmp xtpr_1
xtpr_0:			putchar 0x30
				jmp xtpr_next
xtpr_1:			putchar 0x31
xtpr_next:		putchar 0xA

				test ecx, 1000000000000000b
				print_string pdcm, pdcm_len
				jz pdcm_0
				jmp pdcm_1
pdcm_0:			putchar 0x30
				jmp pdcm_next
pdcm_1:			putchar 0x31
pdcm_next:		putchar 0xA

				test ecx, 100000000000000000b
				print_string pcid, pcid_len
				jz pcid_0
				jmp pcid_1
pcid_0:			putchar 0x30
				jmp pcid_next
pcid_1:			putchar 0x31
pcid_next:		putchar 0xA

				test ecx, 1000000000000000000b
				print_string dca, dca_len
				jz dca_0
				jmp dca_1
dca_0:			putchar 0x30
				jmp dca_next
dca_1:			putchar 0x31
dca_next:		putchar 0xA

				test ecx, 10000000000000000000b
				print_string sse4_1, sse4_1_len
				jz sse4_1_0
				jmp sse4_1_1
sse4_1_0:		putchar 0x30
				jmp sse4_1_next
sse4_1_1:		putchar 0x31
sse4_1_next:	putchar 0xA

				test ecx, 100000000000000000000b
				print_string sse4_2, sse4_2_len
				jz sse4_2_0
				jmp sse4_2_1
sse4_2_0:		putchar 0x30
				jmp sse4_2_next
sse4_2_1:		putchar 0x31
sse4_2_next:	putchar 0xA

				test ecx, 1000000000000000000000b
				print_string x2apic, x2apic_len
				jz x2apic_0
				jmp x2apic_1
x2apic_0:		putchar 0x30
				jmp x2apic_next
x2apic_1:		putchar 0x31
x2apic_next:	putchar 0xA

				test ecx, 10000000000000000000000b
				print_string _movbe, _movbe_len
				jz movbe_0
				jmp movbe_1
movbe_0:		putchar 0x30
				jmp movbe_next
movbe_1:		putchar 0x31
movbe_next:		putchar 0xA

				test ecx, 100000000000000000000000b
				print_string _popcnt, _popcnt_len
				jz _popcnt_0
				jmp _popcnt_1
_popcnt_0:		putchar 0x30
				jmp _popcnt_next
_popcnt_1:		putchar 0x31
_popcnt_next:	putchar 0xA

				test ecx, 1000000000000000000000000b
				print_string tscdeadline, tscdeadline_len
				jz tscdeadline_0
				jmp tscdeadline_1
tscdeadline_0:	putchar 0x30
				jmp tscdeadline_next
tscdeadline_1:	putchar 0x31
tscdeadline_next:	
				putchar 0xA

				test ecx, 10000000000000000000000000b
				print_string aes, aes_len
				jz aes_0
				jmp aes_1
aes_0:			putchar 0x30
				jmp aes_next
aes_1:			putchar 0x31
aes_next:		putchar 0xA

				test ecx, 100000000000000000000000000b
				print_string _xsave, _xsave_len
				jz _xsave_0
				jmp _xsave_1
_xsave_0:		putchar 0x30
				jmp _xsave_next
_xsave_1:		putchar 0x31
_xsave_next:	putchar 0xA

				test ecx, 1000000000000000000000000000b
				print_string osxsave, osxsave_len
				jz osxsave_0
				jmp osxsave_1
osxsave_0:		putchar 0x30
				jmp osxsave_next
osxsave_1:		putchar 0x31
osxsave_next:	putchar 0xa

				test ecx, 10000000000000000000000000000b
				print_string avx, avx_len
				jz avx_0
				jmp avx_1
avx_0:			putchar 0x30
				jmp avx_next
avx_1:			putchar 0x31
avx_next:		putchar 0xa

				test ecx, 100000000000000000000000000000b
				print_string f16c, f16c_len
				jz f16c_0
				jmp f16c_1
f16c_0:			putchar 0x30
				jmp f16c_next
f16c_1:			putchar 0x31
f16c_next:		putchar 0xa

				test ecx, 1000000000000000000000000000000b
				print_string _rdrand, _rdrand_len
				jz _rdrand_0
				jmp _rdrand_1
_rdrand_0:		putchar 0x30
				jmp _rdrand_next
_rdrand_1:		putchar 0x31
_rdrand_next:	putchar 0xa

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

	brand_index db 'Brand Index: '
	brand_index_len equ $ - brand_index

	_clflush db 'CLFLUSH line size: '
	_clflush_len equ $ - _clflush

	logical_cpus db 'Maximum numbers of logical CPUs per package: '
	logcpu_len equ $ - logical_cpus

	apic db 'Default APIC ID (classic, not X2APIC): '
	apic_len equ $ - apic

	fflags_entry db 'Feature flags: 1 - feature supported , 0 - feature unsupported'
	fflags_entry_len equ $ - fflags_entry

	sse3 db 'Streaming SIMD Extensions 3: ' 
	sse3_len equ $ - sse3

	pclmuldq db 'PCLMULDQ instruction: '
	pclmuldq_len equ $ - pclmuldq

	dtes64 db '64-bit debug store: '
	dtes64_len equ $ - dtes64

	monitor_mwait db 'MONITOR and MWAIT instructions: '
	monitor_mwait_len equ $ - monitor_mwait

	dscpl db 'CPL-qualified debug store: '
	dscpl_len equ $ - dscpl

	vmx db 'Virtual machine extensions: '
	vmx_len equ $ - vmx

	smx db 'Safer mode extensions: '
	smx_len equ $ - smx

	eist db 'Enhanced Intel SpeedStep technology: '
	eist_len equ $ - eist

	tm2 db 'Thermal monitor 2: '
	tm2_len equ $ - tm2

	ssse3 db 'Supplemental streaming SIMD extensions 3: '
	ssse3_len equ $ - ssse3

	cnxtid db 'L1 context ID: '
	cnxtid_len equ $ - cnxtid

	fma db 'Fused multiply add: '
	fma_len equ $ - fma

	cx16 db 'CMPXCHG16B instruction: '
	cx16_len equ $ - cx16

	xtpr db 'xTPR update control: '
	xtpr_len equ $ - xtpr

	pdcm db 'Perfmon and debug capability: '
	pdcm_len equ $ - pdcm

	pcid db 'Process context identifiers: '
	pcid_len equ $ - pcid

	dca db 'Direct cache access: '
	dca_len equ $ - dca

	sse4_1 db 'Streaming SIMD Extensions 4.1: ' 
	sse4_1_len equ $ - sse4_1

	sse4_2 db 'Streaming SIMD Extensions 4.2: ' 
	sse4_2_len equ $ - sse4_2

	x2apic db 'Extended xAPIC support: '
	x2apic_len equ $ - x2apic

	_movbe db 'MOVBE instruction: '
	_movbe_len equ $ - _movbe

	_popcnt db 'POPCNT instruction: '
	_popcnt_len equ $ - _popcnt

	tscdeadline db 'Time stamp counter deadline: '
	tscdeadline_len equ $ - tscdeadline

	aes db 'AES instruction extensions: '
	aes_len equ $ - aes

	_xsave db 'XSAVE/XSTOR states: '
	_xsave_len equ $ - _xsave

	osxsave db 'OS-enabled extended state management: '
	osxsave_len equ $ - osxsave

	avx db 'Advanced vector extensions: '
	avx_len equ $ - avx

	f16c db '16-bit floating-point conversion instructions: '
	f16c_len equ $ - f16c

	_rdrand db 'RDRAND instruction: '
	_rdrand_len equ $ - _rdrand

	




