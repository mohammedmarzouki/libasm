section .text
    global _ft_strlen

_ft_strlen:
    mov rax, 0

_while:
    cmp BYTE[rdi + rax], 0
    je _ret
    inc rax
    jmp _while

_ret:
    ret