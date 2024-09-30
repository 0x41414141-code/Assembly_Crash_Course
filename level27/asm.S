.intel_syntax noprefix

_start:
	xor rcx, rcx
	xor rbx, rbx
While:	
	cmp rcx, rsi
	je done
	xor rax, rax
	mov rax, rcx
	imul rax, 0x8
	add rbx, [rdi+rax]
	add rcx, 1
	jmp While
done:
	xor rax, rax
	mov rax, rbx
	idiv rcx
