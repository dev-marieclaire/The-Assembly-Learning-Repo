.model small
.stack 100h

.data
msg	db	'Hello world!$'

.code
start:
	mov	ah, 09h    ; Sets 8-bit register ‘ah’, the high byte of register ax, to 9, to
                   ; select a sub-function number of an MS-DOS routine called below
                   ; via the software interrupt int 21h to display a message
	lea	dx, msg    ; Takes the address of msg, stores the address in 16-bit register dx
	int	21h        ; Various MS-DOS routines are callable by the software interrupt 21h
                   ; Our required sub-function was set in register ah above

	mov	ax, 4C00h  ; Sets register ax to the sub-function number for MS-DOS’s software
                   ; interrupt int 21h for the service ‘terminate program’.
	int	21h        ; Calling this MS-DOS service never returns, as it ends the program.

end start

