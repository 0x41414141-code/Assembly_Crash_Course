.intel_syntax noprefix
main:
	jmp fun
	.rept 0x51
		nop
	.endr
fun:
	pop rdi
	mov rax, 0x403000
	jmp rax
