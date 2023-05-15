.data 
	meuNome: .asciiz "oi, turma, \nMeu nome é Luis"
	
.text
	.main:
	#codigo principal
	la $a0, meuNome
	jal imprime
	
	li $v0, 10 #programa encerra
	syscall
	
	imprime:
		#impressão da mensagem
		li $v0, 4
		syscall
		jr $ra  #volta pra quem chamou a funcao