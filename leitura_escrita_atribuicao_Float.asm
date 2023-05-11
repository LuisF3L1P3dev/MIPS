.data
	msg:.asciiz "forneça um número decimal "
	zero: .float 0.0
.text
	#imprimindo msg
	li $v0, 4
	la $a0, msg
	syscall
	
	#lendo o número
	li $v0, 6
	syscall #valor lido estará me $f0
	
	lwc1 $f1, zero
	add.s $f12, $f1, $f0
	
	#imprimindo o número
	li $v0, 2
	syscall
	