.data
 #f1 at� f 32 pares s�o double
 PI .float 3.141592
.text
	li $v0, 2 #sistema preapara-se para imprimir float
	lwc1 $f12, PI #no caso dos float, os registradores est�o
	#no co-processador 1 (co1)
	#sempre devermos coloar o valor float em $f12, ou
	#o valor correto n�o � impresso
	syscall
