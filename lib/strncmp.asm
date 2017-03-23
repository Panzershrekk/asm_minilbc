[BITS 64]

section .text
	global strncmp:function

strncmp:
	mov rcx, 0

loop:
    cmp rcx, rdx
    jz end_ok
	mov al, [rdi + rcx]
	mov ah, [rsi + rcx]
	cmp al, 0
	je end
	cmp ah, 0
	je end
	cmp al, ah
	jne return_sub
	inc rcx
	jmp loop

return_sub:
	sub al, ah
    movsx rax, al
    ret

end:
	sub al,ah
	cmp al, ah
	jne return_sub
	mov rax, 0
	ret

end_ok:
    mov rax, 0
    ret
