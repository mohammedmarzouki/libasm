section .text
    global _ft_strcpy

_ft_strcpy:
    mov rcx, 0
_loop:
    cmp BYTE[rsi + rcx], 0
    jnc _cpy
    mov BYTE[rdi + rcx],0
    mov rax, rdi
    ret
_cpy:
    mov BYTE[rdi + rcx], BYTE[rsi + rcx]
    inc rcx
    jmp _loop