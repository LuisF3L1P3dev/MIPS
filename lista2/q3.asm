#3. Por que a instru��o addiu $8, $9, -5 
# cont�m um erro de sem�ntica?

# o addiu � usado para fazer somas imediatas e o valor imediato
#fornecido � negativo, que est� fora do intervalo da adi��o imediata,
#o add � capaz de realizar adicao com -32.768 a 32.767, se quiser
#adicionar um valro negativos temos que usar complemento de 2,
#nesse caso o -5 em complemeto de 2 � 65531 e express�o ficaria da
#seguinte forma: $8, $9, 65531