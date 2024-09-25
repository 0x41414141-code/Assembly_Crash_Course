.intel_syntax noprefix
xor rax, rax
mov rax, [rdi]
add rax, [rdi+8]
mov [rsi], rax

