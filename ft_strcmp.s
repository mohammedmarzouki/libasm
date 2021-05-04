section .text
    global _ft_strcmp

_ft_strcmp:
    mov rcx, 0
    mov rax, 0
_loop:
    cmp BYTE[rdi + rcx] , 0
    je _returns
    cmp BYTE[rsi + rcx] , 0
    je _returns
    mov dl , BYTE[rsi + rcx]
    cmp BYTE[rdi + rcx] , dl
    jne _returns
    inc rcx
    jmp _loop
_returns:
    movzx rbx , BYTE[rsi + rcx]
    movzx rax, BYTE[rdi + rcx]
    sub rax , rbx
    ret