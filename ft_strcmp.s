section .text
    global _ft_strcmp

_ft_strcmp:
    mov rcx, 0
_while:
    cmp BYTE[rdi + rcx] , 0
    je _return
    cmp BYTE[rsi + rcx] , 0
    je _return
    mov dl , BYTE[rsi + rcx]
    cmp BYTE[rdi + rcx] , dl
    jne _return
    inc rcx
    jmp _while
_return:
    mov dl , BYTE[rsi + rcx]
    sub BYTE[rdi + rcx] , dl
    mov dl , BYTE[rdi + rcx]
    movzx rax , dl
    ret