[BITS 64]

	global memcpyo:function
	section .text

memcpyo:
	mov rax, rdi
	mov rcx, 0

loop:
	mov r8, [rsi + rcx]
	mov [rdi + rcx], r8
	inc rcx
	cmp rcx, rdx
	jz end
	cmp rcx, rdx
	jnz loop

end:
	ret
