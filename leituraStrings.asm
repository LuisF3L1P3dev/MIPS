.data
	pergunta: .asciiz "qual seu nome? "
	saudacao: .asciiz "olá, "
	nome: .space 25 #especifica o numero de caracteres 
.text
	li $v0, 4
	la $a0, pergunta
	syscall
	
	#leitura do nome
	li $v0, 8
	la $a0, nome
	la $a1, 25 #informa a quantidade de caractes que quero ler
	syscall
	
	#mostra a suadacao
	li $v0, 4
	la $a0, saudacao
	syscall
	
	#imprimir o nome
	li $v0, 4
	la $a0, nome
	syscall
	