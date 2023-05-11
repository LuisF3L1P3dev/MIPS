.data
	idade: .word 56 #valor inteiro na meoria RAM
.text
	li $v0, 1
	lw $a0, idade
	syscall
	