[BITS 64]

	global strcmp:function
	section .text

strcmp:
	mov rcx, 0

loop:
	  mov r8, [rdi + rcx]
		mov r9, [rsi + rcx]

		cmp r8, 0
		jz end

		cmp r9, 0
		jz end

		cmp r8, r9
		jz end

		inc rcx

	  jmp loop

return:
	mov rax,1
	ret

end:
	sub r8,r9

	cmp r8,0
	jnz return

	mov rax,r8
  ret
