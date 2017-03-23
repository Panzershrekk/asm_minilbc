[BITS 64]

section .text
	global strcmp:function

strcmp:
	mov rcx, 0

loop:
	mov al, [rsi + rcx]
	mov ah, [rdi + rcx]
	cmp al, 0
	je end
	cmp ah, 0
	je end
	cmp al, ah
	jg return_m_one
	cmp al, ah
	jl return_one
	inc rcx
	jmp loop

return_one:
	mov rax,1
	ret

return_m_one:
	mov rax, -1
	ret

end:
	sub al,ah
	cmp al, ah
	jg return_m_one
	cmp al, ah
	jl return_one
	mov rax, 0
	ret
