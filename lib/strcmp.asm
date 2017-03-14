[BITS 64]

	global strcmpo:function
	section .text

strcmpo:
	push r8
  mov	r8,rsp
	;push r9
	mov r9,[rsp + 8]
	jz end
  ;mov rcx,0
	;mov r10,0
;
;loop:
;	   cmp byte [rdi + rcx], 0
;	   jz end
;		 cmp byte [rdi + rcx], 0
;	   jz end
;		 cmp r9, r8
;		 inc r8
;		 inc r9
;		 inc rcx
;	   jmp loop

end:
	sub r8,r9
	;sub rax,rcx
	;pop r9
	;pop r8
  ret
