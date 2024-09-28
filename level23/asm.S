.intel_syntax noprefix
main:
	jmp fun
	.rept 0x51
		nop
	.endr
fun:
	mov rax, 0x1

