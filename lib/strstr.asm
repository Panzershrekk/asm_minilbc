[BITS 64]

	global strstro:function
	section .text

strstro:
	push rbp
	mov rbp, rsp
  mov rcx, 0

loop:
	cmp byte [rdi], 0
	jz end

	cmp byte [rsi], 0
	jz end

	jmp check_str

check_str:

  mov al, [rdi]
  mov ah, [rsi]

  cmp byte [rdi], 0
  jz end

  cmp al,ah
  jz check_two_string

  inc rdi
  jmp check_str

check_two_string:
  mov al, [rdi + rcx]
  mov ah, [rsi + rcx]

  cmp ah,0
  jz end_ok

  cmp al,ah
  jne inc_rdi

  inc rcx
  jmp check_two_string

inc_rdi:
  inc rdi
  mov rcx,0
  jmp check_str

end_ok:
  mov rax, rdi
  pop rbp
  ret

end:
	mov rax, 0
	pop rbp
	ret
