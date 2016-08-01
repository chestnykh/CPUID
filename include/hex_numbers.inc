%macro print_hex 2 ;param1 - pointer to number , param2 - pointer to char[] which i store digits of the number 
					pushad
					pushfd
					mov edi, %2
				%rep 8
					mov [edi], byte 0x30
					inc edi
				%endrep
					mov ebx, 0x10		
					xor ecx, ecx
					mov eax, [%1]		
	%%lpdiv:		xor edx, edx
					div ebx
					cmp dl, 0xA
					jl %%number
					jmp %%char

	%%number:		add dl, 0x30
					mov [%2 +ecx], dl
					inc ecx
					test eax, eax
					jnz %%lpdiv
					do_print_hex %2
					jmp %%__end


	%%char:			add dl, 0x37
					mov [%2 + ecx], dl
					inc ecx
					test eax, eax
					jnz %%lpdiv
					do_print_hex %2
				
	%%__end:			
						popfd
						popad
%endmacro

%macro do_print_hex 1
				pushad
				pushfd
				print_heximal_entry
				mov ecx, 7
	%%again:	push ecx
				mov eax, 4
				mov ebx, 1
				mov edx, 1
				lea ecx, [ecx + %1]
				int 0x80
				pop ecx
				loop %%again
				mov eax, 4
				mov ebx, 1
				mov edx, 1
				lea ecx, [%1]
				int 0x80
				popfd
				popad
%endmacro

%macro putchar 1
		pushad
		pushfd
		mov al, %1
		sub esp, 2
		mov edi, esp
		mov [edi], al
		mov eax, 4
		mov ebx, 1
		mov ecx, edi
		mov edx, 1
		int 0x80
		add esp, 2
		popfd
		popad
%endmacro

%macro print_heximal_entry 0
			putchar 0x30
			putchar 0x78
%endmacro

