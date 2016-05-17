section .data 
	num dd 4096
	newstr db 0xA

section .bss
	string resb 32

section .text
	global _start
	_start:		mov eax, [num]
				mov ecx, 32
	nextBit:	test eax, 1b
				jnz one	
				jmp zero

	one:		mov [string+ecx], byte 49
				shr eax, 1
				jecxz _end
				loop nextBit
				

	zero:		mov [string+ecx], byte 48
				shr eax, 1
				jecxz _end
				loop nextBit
				

	_end:		xor eax, eax
				call write
				mov eax, 1
				int 0x80


				write:
	print:		mov ebx, 1
				mov edx, 1
				lea ecx, [string+eax]
				push eax
				mov eax, 4
				int 0x80
				pop eax
				inc eax
				cmp eax, 32
				jbe print
				mov eax, 4
				mov ebx, 1
				mov ecx, newstr
				mov edx, 1
				int 0x80	
				ret				
