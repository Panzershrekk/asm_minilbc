[BITS 64]

	global strncmpo:function
	section .text

strncmpo:
  mov	ebx,[esp+4]
	mov eax,[esp+8]
	mov	ecx,[esp+12]

  mov edx,0

loop:
	   cmp byte [ebx], 0x0
	   jz end

		 cmp byte [eax], 0x0
	   jz end

		 cmp edx, ecx
		 jz end

		 cmp ebx, eax
		 inc eax
		 inc ebx
		 inc edx
	   jmp loop

end:
	sub eax,ebx
  ret
