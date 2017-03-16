[BITS 64]

section .text
	global strchr:function

strchr:
  push rbp
  mov	rbp,rsp

loop:
    cmp byte [rdi], 0
    mov rax, 0
    jz end

    cmp byte [rdi], sil
    mov rax, rdi
    jz end

   inc rdi
   jmp loop

end:
  pop rbp
  ret
