.data
	maior: .asciiz "n�mero � maior que zero."
	menor: .asciiz "n�mero � menor que zero."
	igual: .asciiz "n�mero � igual que zero."
.text
	#ler o n�mero inteiro
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, imprimeIgual 
	bgt $t0, $zero, imprimeMaior
	blt $t0, $zero, imprimeMenor
	
	imprimeIgual:
		li $v0, 4
		la $a0, igual
		syscall
	
		#caso seja igual encerra
		li $v0, 10
		syscall
		
	imprimeMaior:
		li $v0, 4
		la $a0, maior
		syscall
		
		#caso seja maior encerra
		li $v0, 10
		syscall
		
	imprimeMenor:
		li $v0, 4
		la $a0, menor
		syscall
		
		
		