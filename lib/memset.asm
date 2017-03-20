[BITS 64]

global memset:function
section .text

memset:
	mov rax, rsi
	mov rcx, 0

loop:
	mov [rdi + rcx], rsi
	inc rcx
	cmp rcx, rdx
	jz end
	cmp rcx, rdx
	jnz loop

end:
	ret
