.text
	move $t0, $zero #$t0 será o interador i
	
	while:
		beq $t0, 10, saida #se $t0 for igual a vai pra saida
		#enquanto não for igual a 10
		addi $t0, $t0, 1 #$t0 vai receber $t0 + 1
		j while #j de jump da um pulo para o while
	saida:
		#impre o valor de i
		li $v0, 1
		move $a0, $t0
		syscall
		