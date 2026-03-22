# fibbo.s

.global _start

.text

_start:
    mov $1, %rax
    mov $1, %rdi
    mov $110, %rsi
    mov $1, %rdx
    
    syscall

    add $1, %rax
