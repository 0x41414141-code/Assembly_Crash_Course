.intel_syntax noprefix

_start:
	cmp rdi, 4
	jg biggerThan4
	xor rax, rax
	imul rdi, 0x8
	add rax, rdi
	jmp [rsi+rax]
biggerThan4:
	jmp [rsi+32]

