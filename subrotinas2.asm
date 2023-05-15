#escreva uma funcao que verifica se um número é par ou impar
.data
	numero: .asciiz "forneça o número positivo: "
	par: .asciiz "número é par "
	impar: .asciiz "número é ímpar"
	
.text
	la $a0, numero
	jal imprimeString
	jal leInteiro
	
	move $a0, $v0
	
	jal eImpar
	beq $v0, $zero, imprimePar
	la $a0, impar
	jal imprimeString
	jal encerraPrograma
	
	imprimePar:
		la $a0, par
		jal imprimeString
		jal encerraPrograma
		
	#funcão que verifica se o argumento $a0 é impar
	#retorna 1 se for ímpar
	#retorna 0 se for par
	eImpar:
		li $t0, 2
		div $a0, $t0 #a divisão sobra o hi(resto) e lo(inteira)
		
		mfhi $v0 #mfhi prega o valor de hi e coloca em v0
		jr $ra #retorna pra quem chamar a função
		
	#encerra o programa
	encerraPrograma:
		li $v0, 10
		syscall
	
	#função que recebe uma String em $a0 e a Imprime
	imprimeString:
		li $v0, 4
		syscall 
		jr $ra
		
	#funcao que le um inteiro e o terno em $v0
	leInteiro:
		li $v0, 5
		syscall 
		jr $ra
	