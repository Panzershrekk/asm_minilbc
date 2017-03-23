[BITS 64]

section .text
	global strchro:function

strchro:
  push rbp
  mov	rbp,rsp

loop:
		cmp byte [rdi], sil
		jz ret_ok
		
    cmp byte [rdi], 0
    jz end

   inc rdi
   jmp loop

ret_ok:
	mov rax,rdi
	pop rbp
	ret

end:
	mov rax,0
  pop rbp
  ret
