[BITS 64]

	global strcspno:function
	section .text

strcspno:
	push rbp
	mov rbp, rsp
	mov rdx, rdi
	mov rbx, rsi
  mov rcx, 0

loop:
	cmp byte [rdx], 0
	jz strlen

	cmp byte [rsi], 0
	jz strlen

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
  inc rcx
	jmp loop

strlen:
  cmp byte [rdi + rcx], 0
  jz end
  inc rcx
  jmp strlen

end_ok:
	mov rax, rcx
	pop rbp
	ret

end:
	mov rax, rcx
	pop rbp
	ret
