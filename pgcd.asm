	.text
	.globl __start

__start:	
	li $t0, 2
	li $t1, 4

while:	beq $t0, $t1, endwhile

if:		ble $t0, $t1, else

then: 	sub $t0, $t0, $t1
		b endif
	
else:	sub $t1, $t1, $t0

endif:	b while

endwhile:
		li $v0, 10
		syscall
