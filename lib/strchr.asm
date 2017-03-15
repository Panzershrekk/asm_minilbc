[BITS 64]

section .text
	global strchro:function

strchro:
  push r8
  mov	r8,rsp

  mov rcx,0

loop:
    cmp byte [rdi + rcx], 0
    mov rax, 0
    jz end

    cmp byte [rdi + rcx], cl
    mov rax, rdi
    jz end

   inc rcx
   jmp loop

end:
  pop r8
  ret
