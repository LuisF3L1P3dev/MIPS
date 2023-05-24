# 7. Mostre como podemos fazer uma divisão 
# de um número por outro sem utilizar
# a instrução div ou divu.

.text
	li $t0, 24 #dividendo
	
	# dividindo movendo os bits para esquerda
	# s0 vai receber o valor de t0, movendo x bits para direita, 
	# se mover 1 divido por 2, se mover 2 divido por 4, 
	# mover 3 divido por 8 e assim por diante, é exponencial
	
	srl $s0, $t0, 3 #nesse caso o valor de $s0, vai ser 3, 24/8=3
	
	