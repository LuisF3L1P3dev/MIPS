.data
 #f1 até f 32 pares são double
 PI .float 3.141592
.text
	li $v0, 2 #sistema preapara-se para imprimir float
	lwc1 $f12, PI #no caso dos float, os registradores estão
	#no co-processador 1 (co1)
	#sempre devermos coloar o valor float em $f12, ou
	#o valor correto não é impresso
	syscall
