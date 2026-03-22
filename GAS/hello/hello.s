.global _start

.text

_start:
    # #write (1, message, 13)
    mov $1, %rax    # system call 1 is write
    mov $1, %rdi    # file handle 1 is stdout
    mov $message, %rsi  # String addressing to output.
    mov $13, %rdx   # Number of bytes.
    syscall     # invokes the OS.

    mov $1, %rax
    mov $1, %rdi
    mov $messagedeux, %rsi
    mov $28, %rdx
    syscall

    # Exit routine:
    mov $60, %rax   # system call 60 is exit.
    xor %rdi, %rdi  # return code 0.
    syscall         # invokes the operating system.

message:
    .ascii "Hello, world\n"

messagedeux:
    .ascii "C'est le deuxième message.\n"
