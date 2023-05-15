.data
	msg: .asciiz "informe um numero: "
	espaco: .byte ' '
	
.text

	li $v0, 4
	la $a0, msg
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	move $t1, $zero
	
	laco:
		bgt $t1, $t0, caiFora #se t1 for maior que t0 caiFora
		
		#imprime $t1
		li $v0, 1
		move $a0, $t1
		syscall
		
		#imprime espaço em branco
		li $v0, 4
		la $a0, espaco
		syscall
		
		addi $t1, $t1, 1
		j laco
		
	caiFora:
		