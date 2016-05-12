%macro print_hexint 2 ;param1 - pointer to number , param2 - pointer to char[] which i store digits of the number 
					pushad
					mov edi, %2
			%rep 8	
					mov [edi], byte 0
					inc edi
			%endrep
					jmp %%__end
					mov ebx, 16		
					xor ecx, ecx
					mov eax, [%1]		
	%%lpdiv:		xor edx, edx
					div ebx
					cmp dl, 10
					jl %%number
					jmp %%char

	%%number:		add dl, 48
					mov [%2 +ecx], dl
					inc ecx
					;test eax, eax
					cmp eax, 0
					jne %%lpdiv
					jmp %%__end

	%%char:			add dl, 55
					mov [%2 + ecx], dl
					inc ecx
					;test eax, eax
					cmp eax, 0
					jne %%lpdiv
	%%__end
					print_string %2 , 8	
					popad
%endmacro
