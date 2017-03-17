[BITS 64]

	global strpbrk:function
	section .text

strpbrk:
	push rbp
	mov rbp, rsp
	mov rdx, rdi
	mov rbx, rsi

loop:
	cmp byte [rdx], 0
	jz end

	cmp byte [rsi], 0
	jz end

	jmp find_in

find_in:
	cmp byte [rbx],0
	jz reinit
	mov al, [rbx]
	cmp [rdx], al
	jz end_ok
	inc rbx
	jmp find_in

reinit:
	mov rbx,rsi
	inc rdx
	jmp loop

end_ok:
	mov rax, rdx
	pop rbp
	ret

end:
	mov rax, 0
	pop rbp
	ret
