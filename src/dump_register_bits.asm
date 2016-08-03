%include '../include/hex_numbers.inc'

global dump_register_bits


dump_register_bits: ; [ebp+16] - register value , [ebp+12] - from , [ebp+8] - to 
				push ebp
				mov ebp, esp
				push eax
				push ecx
				mov eax, [ebp+12]
				cmp eax, 31
				ja _fin
				mov eax, [ebp+8]
				cmp eax, 31
				ja _fin
				mov eax, [ebp+16]
				mov ecx, [ebp+12]
				shr eax, cl
				mov ecx, [ebp+8]
				sub ecx, [ebp+12]
				inc ecx
				ror eax, cl
				push ebx
				xor ebx, ebx
				or ebx, 1
				ror ebx, 1
	_again:		test eax, ebx
				jz _zero
				jmp _one
	_next_bit:	shl eax, 1
				loop _again	
		lp:		jmp _end

	_zero:		putchar 0x30
				jmp _next_bit
	
	 _one:		putchar 0x31
				jmp _next_bit

	 _end:	
				pop ebx
				pop ecx
				pop eax
	_fin		mov esp, ebp
				pop ebp
				ret
