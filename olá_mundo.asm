.data
	#�rea para dados na mem�ria principal
	msg: .asciiz "ol�, mundo" #mensagem a ser exibida para o user

.text 
	#�rea para instru��es do programa
	li $v0, 4 #instru��o para impress�o de String
	la $a0, msg #indicar o endere�o onde est� a mgs
	syscall #fa�a, imprima