.data
	n1: .word 5
	n2: .word 10
.text
	li $t0, 75 #t0 vai receber 75
	li $t1, 25 #t1 vai receber 25
	add $s0, $t0, $t1 #s0 vai receber a soma entre t0 e t1
	
	addi $s1, $s0, 36 #s1 vai receber a soma entre s0 e 36
