.data
	saudacao: .asciiz "Digite sua idade: "
	saida: .asciiz "sua idade � "
.text
	li $v0, 4#imprimir a string
	la $a0, saudacao
	syscall
	
	li $v0, 5 #leitura de inteiro
	syscall
	
	move $t0, $v0#valor fornecido est� em t0

	li $v0, 4#imprimir a string
	la $a0, saida
	syscall
	
	li $v0, 1
	move $a0, $t0
	syscall
	