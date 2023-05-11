.data
	divisao: .asciiz "resultado da divisão: "
	resto:
.text
	li $t0, 32
	li $t1, 5
	
	div $t0, $t1
	
	#pegar parte inteira da divisao
	mflo $s0
	
	#resto da divisao
	mfhi $s1
	
	#dividindo movendo os bits para esquerda
	srl $s2, $t0, 2 # s2 vai receber o valor de t0, movendo x bits para direita, se mover 1 divido por 2, se mover 2 divido por 4, mover 3 divido por 8 e assim por diante

	li $v0, 4
	la $a0, divisao
	syscall
	
	#imprindo divisao
	li $v0, 1
	move $a0, $s2
	syscall