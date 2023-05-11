.data

.text
	li $t0, 12
	addi $t1, $zero, 10
	#addi esta fazendo a mesmac coisa que o li, ja que estou somando valor com 0 e colocando no registrador
	
	#$s0 terá p resultado da multiplicação
	mul $s0, $t0, $t1
	
	li $v0, 1
	move $a0,$s0 #estou movendo para a0 pq é registrador adequado para impressão de inteiros
	syscall
	
	#exponencial movendo bits para esquerda
	li $v1, 1
	sll $s1, $t1, 10#multiplicar t1 por 2^10 
	move $a1, $s1
	syscall