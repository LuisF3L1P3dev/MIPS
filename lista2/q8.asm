# 8. Construir um código em assembly do MIPS para 
# executar o seguinte código em alto-nível:
# a = 1;
# b = 2;
# if (a<=b){
# a= a + b;
# }
.text
		li $t0, 1 #a = 1
		li $t1, 2 #b = 2

		ble $t0, $t1, acao #bancht if less or equal

		j fim
	
	acao:
		add $t0, $t0, $t1
		move $s0, $t0
			
	fim:
		li $v0, 10
		syscall