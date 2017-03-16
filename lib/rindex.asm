[BITS 64]

section .text
	global rindexo:function

rindexo:
  push rbp
  mov	rbp,rsp
	mov rax,0

loop:
    cmp byte [rdi], 0
    jz end

    cmp byte [rdi], sil
    jz last_occur

   inc rdi
   jmp loop

last_occur:
	mov rax, rdi
	inc rdi
	jmp loop

end:
  pop rbp
  ret
