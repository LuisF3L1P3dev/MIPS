#4. Crie uma sequência de instruções MIPS para 
#implementar a instrução mod do C/Java
.data

.text
	li $t0, 40
	li $t1, 2
	
	div $t0, $t1
	
	#pegar parte inteira
	mflo $s0
	
	#pegar resto da divisão
	mfhi $s1
	
	#movendo valor de hi para registrador
	move $s2, $s1
	
	
	
	 