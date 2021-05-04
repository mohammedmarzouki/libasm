section .text
    global _ft_strdup
    extern  _ft_strlen
	extern  _ft_strcpy
	extern  _malloc

_ft_strdup:
    call _ft_strlen
    inc rax
    push rdi
    mov rdi , rax
    call _malloc
    cmp rax , 0
    je _err
    mov rdi , rax
    pop rsi
    call _ft_strcpy
    ret
_err:
    ret