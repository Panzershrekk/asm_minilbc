[BITS 64]

	global strncmp:function
	section .text

strncmp:
	mov rcx, 0

loop:

	mov al, [rdi + rcx]
	mov ah, [rsi + rcx]

	cmp al, ah
	jne end

	cmp al, 0
	je end

	cmp ah, 0
	je end

	inc rcx

	cmp rcx, rdx
	jz end

	jmp loop

end:
 	sub al,ah
	movsx rax, al
  ret
