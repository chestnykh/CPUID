%include '../include/hex_numbers.inc'
%include '../include/stringops.inc'

extern dump_register_bits
global leaf_01_ecx_info

section .text

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


				;************************** 
				;		edx
				;**************************
		%rep 10
				putchar 0x23
		%endrep
				putchar 0xA

				test edx, 1b
				print_string fpu, fpu_len
				jz fpu_0
				jmp fpu_1
fpu_0:			putchar 0x30
				jmp fpu_next
fpu_1:			putchar 0x31
fpu_next:		putchar 0xa

				test edx, 10b
				print_string vme, vme_len
				jz vme_0
				jmp vme_1
vme_0:			putchar 0x30
				jmp vme_next
vme_1:			putchar 0x31
vme_next:		putchar 0xa

				test edx, 100b
				print_string de, de_len
				jz de_0
				jmp de_1
de_0:			putchar 0x30
				jmp de_next
de_1:			putchar 0x31
de_next:		putchar 0xa

				test edx, 1000b
				print_string pse, pse_len
				jz pse_0
				jmp pse_1
pse_0:			putchar 0x30
				jmp pse_next
pse_1:			putchar 0x31
pse_next:		putchar 0xa

				test edx, 10000b
				print_string tsc, tsc_len
				jz tsc_0
				jmp tsc_1
tsc_0:			putchar 0x30
				jmp tsc_next
tsc_1:			putchar 0x31
tsc_next:		putchar 0xa

				test edx, 100000b
				print_string msr, msr_len
				jz msr_0
				jmp msr_1
msr_0:			putchar 0x30
				jmp msr_next
msr_1:			putchar 0x31
msr_next:		putchar 0xa

				test edx, 1000000b
				print_string pae, pae_len
				jz pae_0
				jmp pae_1
pae_0:			putchar 0x30
				jmp pae_next
pae_1:			putchar 0x31
pae_next:		putchar 0xa

				test edx, 10000000b
				print_string mce, mce_len
				jz mce_0
				jmp mce_1
mce_0:			putchar 0x30
				jmp mce_next
mce_1:			putchar 0x31
mce_next:		putchar 0xa

				test edx, 100000000b
				print_string cx8, cx8_len
				jz cx8_0
				jmp cx8_1
cx8_0:			putchar 0x30
				jmp cx8_next
cx8_1:			putchar 0x31
cx8_next:		putchar 0xa

				test edx, 1000000000b
				print_string _apic, _apic_len
				jz _apic_0
				jmp _apic_1
_apic_0:		putchar 0x30
				jmp _apic_next
_apic_1:		putchar 0x31
_apic_next:		putchar 0xa

				test edx, 100000000000b
				print_string sep, sep_len
				jz sep_0
				jmp sep_1
sep_0:			putchar 0x30
				jmp sep_next
sep_1:			putchar 0x31
sep_next:		putchar 0xa

				test edx, 1000000000000b
				print_string mtrr, mtrr_len
				jz mtrr_0
				jmp mtrr_1
mtrr_0:			putchar 0x30
				jmp mtrr_next
mtrr_1:			putchar 0x31
mtrr_next:		putchar 0xa

				test edx, 10000000000000b
				print_string pge, pge_len
				jz pge_0
				jmp pge_1
pge_0:			putchar 0x30
				jmp pge_next
pge_1:			putchar 0x31
pge_next:		putchar 0xa

				test edx, 100000000000000b
				print_string mca, mca_len
				jz mca_0
				jmp mca_1
mca_0:			putchar 0x30
				jmp mca_next
mca_1:			putchar 0x31
mca_next:		putchar 0xa

				test edx, 1000000000000000b
				print_string _cmov, _cmov_len
				jz _cmov_0
				jmp _cmov_1
_cmov_0:		putchar 0x30
				jmp _cmov_next
_cmov_1:		putchar 0x31
_cmov_next:		putchar 0xa

				test edx, 10000000000000000b
				print_string pat, pat_len
				jz pat_0
				jmp pat_1
pat_0:			putchar 0x30
				jmp pat_next
pat_1:			putchar 0x31
pat_next:		putchar 0xa

				test edx, 100000000000000000b
				print_string pse36, pse36_len
				jz pse36_0
				jmp pse36_1
pse36_0:		putchar 0x30
				jmp pse36_next
pse36_1:		putchar 0x31
pse36_next:		putchar 0xa

				test edx, 1000000000000000000b
				print_string psn, psn_len
				jz psn_0
				jmp psn_1
psn_0:			putchar 0x30
				jmp psn_next
psn_1:			putchar 0x31
psn_next:		putchar 0xa

				test edx, 10000000000000000000b
				print_string clfsh, clfsh_len
				jz clfsh_0
				jmp clfsh_1
clfsh_0:		putchar 0x30
				jmp clfsh_next
clfsh_1:		putchar 0x31
clfsh_next:		putchar 0xa

				test edx, 1000000000000000000000b
				print_string dst, dst_len
				jz dst_0
				jmp dst_1
dst_0:			putchar 0x30
				jmp dst_next
dst_1:			putchar 0x31
dst_next:		putchar 0xa

				test edx, 10000000000000000000000b
				print_string _acpi_, _acpi__len
				jz _acpi__0
				jmp _acpi__1
_acpi__0:		putchar 0x30
				jmp _acpi__next
_acpi__1:		putchar 0x31
_acpi__next:	putchar 0xa

				test edx, 100000000000000000000000b
				print_string mmx, mmx_len
				jz mmx_0
				jmp mmx_1
mmx_0:			putchar 0x30
				jmp mmx_next
mmx_1:			putchar 0x31
mmx_next:		putchar 0xa

				test edx, 1000000000000000000000000b
				print_string fxsr, fxsr_len
				jz mmx_0
				jmp fxsr_1
fxsr_0:			putchar 0x30
				jmp fxsr_next
fxsr_1:			putchar 0x31
fxsr_next:		putchar 0xa

				test edx, 10000000000000000000000000b
				print_string sse, sse_len
				jz sse_0
				jmp sse_1
sse_0:			putchar 0x30
				jmp sse_next
sse_1:			putchar 0x31
sse_next:		putchar 0xa

				test edx, 100000000000000000000000000b
				print_string sse2, sse2_len
				jz sse2_0
				jmp sse2_1
sse2_0:			putchar 0x30
				jmp sse2_next
sse2_1:			putchar 0x31
sse2_next:		putchar 0xa

				test edx, 1000000000000000000000000000b
				print_string _ss, _ss_len
				jz _ss_0
				jmp _ss_1
_ss_0:			putchar 0x30
				jmp _ss_next
_ss_1:			putchar 0x31
_ss_next:		putchar 0xa

				test edx, 10000000000000000000000000000b
				print_string htt, htt_len
				jz htt_0
				jmp htt_1
htt_0:			putchar 0x30
				jmp htt_next
htt_1:			putchar 0x31
htt_next:		putchar 0xa

				test edx, 100000000000000000000000000000b
				print_string tm, tm_len
				jz tm_0
				jmp tm_1
tm_0:			putchar 0x30
				jmp tm_next
tm_1:			putchar 0x31
tm_next:		putchar 0xa

				test edx, 10000000000000000000000000000000b
				print_string pbe, pbe_len
				jz pbe_0
				jmp pbe_1
pbe_0:			putchar 0x30
				jmp pbe_next
pbe_1:			putchar 0x31
pbe_next:		putchar 0xa


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

	;ecx info	

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


	;edx info

	fpu db 'Intel387 floating-point instruction set: '
	fpu_len equ $ - fpu

	vme db 'Virtual-8086 mode: '
	vme_len equ $ - vme

	de db 'Debugging extension: '
	de_len equ $ - de

	pse db 'Page size extension (4MB pages): '
	pse_len equ $ - pse

	tsc db 'Time-stamp counter: '
	tsc_len equ $ - tsc

	msr db 'Model specific registers: '
	msr_len equ $ - msr

	pae db 'Physical address extension: '
	pae_len equ $ - pae

	mce db 'Machine-Check exception: '
	mce_len equ $ - mce

	cx8 db 'CMPXCHG8 instruction: '
	cx8_len equ $ - cx8

	_apic db 'On-chip APIC hardware: '
	_apic_len equ $ - _apic

	sep db 'Fast system call: '
	sep_len equ $ - sep

	mtrr db 'Memory type range registers: '
	mtrr_len equ $ - mtrr

	pge db 'Page global: '
	pge_len equ $ - pge

	mca db 'Machine-Check architecture: '
	mca_len equ $ - mca

	_cmov db 'Conditional move instruction: '
	_cmov_len equ $ - _cmov

	pat db 'Page attribute table: '
	pat_len equ $ - pat

	pse36 db '36-bit page size extension: '
	pse36_len equ $ - pse36

	psn db 'Processor serial number: '
	psn_len equ $ - psn

	clfsh db 'CLFLUSH instruction: '
	clfsh_len equ $ - clfsh

	dst db 'Debug store: '
	dst_len equ $ - dst

	_acpi_ db 'Thermal monitor and software controlled clock facilities: '
	_acpi__len equ $ - _acpi_

	mmx db 'MMX technology: '
	mmx_len equ $ - mmx

	fxsr db 'FXSAVE and FXSTOR instructions:'
	fxsr_len equ $ - fxsr

	sse db 'Streaming SIMD Extensions: '
	sse_len equ $ - sse

	sse2 db 'Streaming SIMD Extensions 2: ' 
	sse2_len equ $ - sse2

	_ss db 'Self-Snoop: '
	_ss_len equ $ - _ss

	htt db 'Multi-threading: '
	htt_len equ $ - htt

	tm db 'Thermal monitor: '
	tm_len equ $ - tm

	pbe db 'Pending break enable: '
	pbe_len equ $ - pbe




	




