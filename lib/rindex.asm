[BITS 64]

section .text
	global rindex:function

rindex:
  push rbp
  mov	rbp,rsp
	mov rax,0

loop:
	cmp byte [rdi], sil
	jz last_occur

		cmp byte [rdi], 0
		jz end

   inc rdi
   jmp loop

last_occur:
	mov rax, rdi
	cmp byte [rdi], 0
	je end
	inc rdi
	jmp loop

end:
  pop rbp
  ret
