.data 
	meuNome: .asciiz "oi, turma, \nMeu nome � Luis"
	
.text
	.main:
	#codigo principal
	la $a0, meuNome
	jal imprime
	
	li $v0, 10 #programa encerra
	syscall
	
	imprime:
		#impress�o da mensagem
		li $v0, 4
		syscall
		jr $ra  #volta pra quem chamou a funcao