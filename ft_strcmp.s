section .text
    global _ft_strcmp

_ft_strcmp:
    xor rcx, rcx
_while:
    cmp BYTE[rdi + rcx] , 0
    je _return
    cmp BYTE[rsi + rcx] , 0
    je _return
    cmp BYTE[rdi + rcx] , BYTE[rsi + rcx]
    je _return
    inc rcx
    jmp _while
_return:
    sub BYTE[rdi + rcx] , BYTE[rsi + rcx]
    mov rax , BYTE[rdi]
    ret