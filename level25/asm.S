.intel_syntax noprefix

_start:
	xor ebp, ebp
	mov ebp, 0x7f454c46
	cmp [rdi], ebp
	je case1
	xor ebp, ebp
	mov ebp, 0x00005A4D
	cmp [rdi], ebp
	je case2
	jmp case3
case1:
	xor rax, rax
	mov eax, [rdi+4]
	add eax, [rdi+8]
	add eax, [rdi+12]
	jmp done
case2:
	xor rax, rax
	mov eax, [rdi+4]
	sub eax, [rdi+8]
	sub eax, [rdi+12]
	jmp done
case3:
	xor rax, rax
	mov eax, [rdi+4]
	imul eax, [rdi+8]
	imul eax, [rdi+12]
	jmp done
done: 
	nop
 
