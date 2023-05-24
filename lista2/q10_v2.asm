# 10. Construir um código em assembly do MIPS 
# para executar o seguinte código
# em alto-nível:

# a = 1;
# b = 2;
# for (i = 0; i<10; i++){
#  if (a < b){
#  a = a + 2;
#  }else{
#   b = b + 2;
#  }
# }
.text
	li $t0, 1 #a=1
	li $t1, 2 #b=2
	move $s0, $zero #$s0 sera o interador i
	loop:
		beq $s0, 9, saida
		addi $s0, $s0, 1 #encrementando i++
		slt $s1, $t0, $t1 # se $t0 < $t1 
		beq $s1, $s0, else # $s1 for igual a 0: else
		addi $t0, $t0, 2	
		j loop
		
	else:
		add $t1, $t1, 2
		j loop
		
	saida:
		#imprime valor i
		li $v0, 1
		move $a0, $s0
		syscall