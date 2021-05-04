section .text
    global _ft_read
    extern ___error

_ft_read:
    mov rax, 0x2000004 ;to call write
    syscall
    jc _err
    ret

_err:
    push rax
    call ___error
    pop rcx
    mov QWORD[rax], rcx
    mov rax, -1
    ret