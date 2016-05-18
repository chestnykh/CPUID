%macro strcpy 3 ;source - destination - length
	pushad
	pushfd
	mov esi, %1
	mov edi, %2
	mov ecx, %3
	rep movsb
	popfd
	popad
%endmacro

%macro print_string 2 ;source - length
			pushad
			pushfd
			xor ecx, ecx
	%%repeat mov eax, 4
			mov ebx, 1
			mov edx, 1
			push ecx
			lea ecx, [ecx + %1]
			pushad
			pushfd
			int 0x80
			popfd
			popad
			pop ecx
			inc ecx
			cmp ecx, %2
			jne %%repeat
			popfd
			popad
%endmacro
