.data
	#área para dados na memória principal
	msg: .asciiz "olá, mundo" #mensagem a ser exibida para o user

.text 
	#área para instruções do programa
	li $v0, 4 #instrução para impressão de String
	la $a0, msg #indicar o endereço onde está a mgs
	syscall #faça, imprima