# flow.s
.include "flow_dat.s"

.global _start

.text

_start:
    mov $1, %rax
    mov $1, %rdi
    mov $greet, %rsi
    mov $10, %rdx
    syscall

    jmp repeat

repeat:
    add $1, %rbx
    
    mov $1, %rax
    mov $1, %rdi
    mov $premiermessage, %rsi
    mov $54, %rdx
    syscall

    cmp $3, %rbx
    jne repeat
    je fine

fine:
    mov $1, %rax
    mov $1, %rdi
    mov $deuxiememessage, %rsi
    mov $15, %rdx
    syscall
    
    # Exit routine:
    mov $60, %rax   # system call 60 is exit.
    xor %rdi, %rdi  # return code 0.
    syscall         # invokes the operating system.
