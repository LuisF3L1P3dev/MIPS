# 9. Construir um código em assembly do 
# MIPS para executar o seguinte código
# em alto-nível:
# a = 1;
# b = 2;
# for (i = 0; i<10; i++){
# a= a + b;
# }

.text

	li $t0, 1 #a=1
	li $t1, 2 #b=2
	move $s0, $zero #$s0 sera o interador i
	
	loop:
		beq $s0, 9, saida # quando $s0 for igual que 9: saida
		#enquanto $s0 não for igual a 9:
		addi $s0, $s0, 1 #encrementando i++
		add $t0, $t0, $t1
		j loop #recursão para o loop
			
	saida:
		#imprime valor i
		li $v0, 1
		move $a0, $s0
		syscall
	