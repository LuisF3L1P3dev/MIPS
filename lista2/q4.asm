#4. Crie uma sequ�ncia de instru��es MIPS para 
#implementar a instru��o mod do C/Java
.data

.text
	li $t0, 40
	li $t1, 2
	
	div $t0, $t1
	
	#pegar parte inteira
	mflo $s0
	
	#pegar resto da divis�o
	mfhi $s1
	
	#movendo valor de hi para registrador
	move $s2, $s1
	
	
	
	 