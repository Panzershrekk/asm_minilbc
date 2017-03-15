[BITS 64]

	global strncmpo:function
	section .text

strncmpo:
	mov rcx, 0

loop:
	  mov r8, [rdi + rcx]
		mov r9, [rsi + rcx]
		cmp r8, 0
		jz end
		cmp r9, 0
		jz end

		cmp rcx, rdx
		je end
		
		cmp r8, r9
		jz end
		inc rcx
	  jmp loop

end:
	sub r8,r9
	mov rax, r8
  ret
