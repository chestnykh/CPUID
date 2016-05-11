section .data
	num dd 45678
	newstr db 10

section .bss
	string resb 10

section .text
global _start
	_start:	mov eax, [num]
			xor ecx, ecx
			mov ebx, dword 10
	   lp:  xor edx, edx
			div ebx
			add dl, byte 48
			mov [string+ecx], dl
			inc ecx
			cmp al, 0
			jne lp
			dec ecx
	print:	mov eax, 4
			mov ebx, 1
			mov edx, 1
			push ecx
			lea ecx, [string+ecx]
			int 0x80
			pop ecx
			dec ecx
		   	cmp ecx, 0
			jne print
			call printFirstNumber
			mov eax, 4
			mov ebx, 1
			mov ecx, newstr
			mov edx, 1
			int 0x80
			mov eax, 1
			int 0x80
			
			printFirstNumber:
			mov eax, 4
			mov ebx, 1
			mov edx, 1
			lea ecx, [string]
			int 0x80
			ret
