.intel_syntax noprefix

_start:
	xor rcx, rcx
	cmp rdi, 0
	jz done
loop:
	mov bl, [rdi+rcx]
	cmp bl, 0
	jz done
	add rcx, 1
	jmp loop
done:
	mov rax, rcx
	nop

