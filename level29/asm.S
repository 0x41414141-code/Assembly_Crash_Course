.intel_syntax noprefix

_start:
	xor rcx,rcx
	xor rdx,rdx
	mov rdx, rdi
	test rdi,rdi
	jz done

loop:
	mov bl,[rdx]
	test bl,bl
	jz done
	cmp bl,0x5a
	jg continue


    mov rax, 0x403000
    xor rdi, rdi
    mov dil, bl
    call rax
    mov [rdx], al
	inc rcx

continue:
	inc rdx
	jmp loop

done:
	mov rax,rcx
	ret


