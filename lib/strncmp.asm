[BITS 64]

	global strncmp:function
	section .text

strncmp:
	mov rcx, 0

loop:

	mov al, [rdi + rcx]
	mov ah, [rsi + rcx]

	cmp rdx, 0
	jz ret_zero
	
	cmp al, ah
	jne end

	cmp al, 0
	je end

	cmp ah, 0
	je end

	cmp rcx, rdx
	jz end

	inc rcx

	jmp loop

end:
 	sub al,ah
	movsx rax, al
  ret

ret_zero:
	mov rax, 0
	ret
