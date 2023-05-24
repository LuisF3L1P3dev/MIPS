#1. Escreva um código em linguagem de montagem para realizar 
#a expressão ? = b + c – (d – e) 
#sem precisar utilizar mais de 5 registradores.

.data
	a: .word 0
	b: .word 75
	c: .word 25
	d: .word 30
	e: .word 20
	
.text
	lw $t0, b
	lw $t1, c
	lw $t2, d
	lw $t3, e
	
	sub $t4, $t2, $t3
	add $t4, $t4, $t1 # menos com menos é mais
	add $t4, $t4, $t0
	
	sw $t4, a#armazena o resultado em a
	
	li $v0, 10
	syscall
	
	
	
	

	
	
