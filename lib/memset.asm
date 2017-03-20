[BITS 64]

global memset:function
section .text

memset:
  push rbp
  mov rbp,rsp
  mov rcx,1

loop:

  cmp rdx,0
  jz end

  cmp byte [rdi], 0
  jz end

  cmp byte [rdi], sil
  mov [rdi], sil

  cmp rcx,rdx
  jz end

  inc rcx
  inc rdi
  jmp loop

end:
  pop rbp
  ret
