[BITS 64]

	global memcpyo:function
	section .text

memcpyo:
  push rbp
  mov rbp,rsp
  mov rcx,0

loop:

  cmp byte [rdi], 0
  jz int_val
  inc rcx
  inc rdi
  jmp loop

int_val:
  mov rax,rcx
  add rcx,rdx
  mov r8,0
  jmp add_str

add_str:
  cmp rax,rcx
  jz end
  ;mov byte [rdi + rax], 1
  inc r8
  inc rax
  jmp add_str

end:
  pop rbp
  ret
