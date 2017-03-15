[BITS 64]

section .text
	global strchr:function

strlen:
  push r8
  mov	r8,rsp
  mov rcx,0

loop:
   cmp byte [rdi + rcx], 0
   jz end
   inc rcx
   jmp loop

end:
  mov rax,rcx
  pop r8
  ret
