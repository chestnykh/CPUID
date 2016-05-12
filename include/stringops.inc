%macro strcpy 3 ;source - destination - length
	mov esi, %1
	mov edi, %2
	mov ecx, %3
	rep movsb
%endmacro

%macro print_string 2 ;source - length
			pushad
			xor ecx, ecx
	%%repeat mov eax, 4
			mov ebx, 1
			mov edx, 1
			push ecx
			lea ecx, [ecx + %1]
			int 0x80
			pop ecx
			inc ecx
			cmp ecx, %2
			jne %%repeat
			popad
%endmacro
