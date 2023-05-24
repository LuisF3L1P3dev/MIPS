#11. Construir um código em assembly do MIPS 
#para executar o seguinte código em alto-nível: 

# a = 1;
# b = 2;
# i = 0;
# while (i<10){
#  if (a < b){
#   a++;
#  }else{
#   b++;
#  }
#  i++;
# }


.text
	li $t0, 1 #a
	li $t1, 2 #b
	move $s0, $zero #i
	
	while:	
			blt $s0, 10, somaA #enquanto $s0 for menor que $10: somaA
			#somaB:
			addi $t1, $t1, 1
			addi $s0, $s0, 1
			
			j while
			
	somaA:
			slt $s1, $t0, $t1
			beqz $s1, elseA
			addi $t0, $t0, 1
	
	elseA:		
			j while
		
		
			