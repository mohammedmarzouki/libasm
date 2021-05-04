section .text
    global _ft_strcpy

_ft_strcpy:
    mov rcx, 0
_loop:
    cmp BYTE[rsi + rcx], 0
    jne _cpy
    mov BYTE[rdi + rcx],0
    mov rax, rdi
    ret
_cpy:
    mov dl, BYTE[rsi + rcx]
    mov BYTE[rdi + rcx], dl
    inc rcx
    jmp _loop