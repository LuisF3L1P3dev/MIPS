#3. Por que a instrução addiu $8, $9, -5 
# contém um erro de semântica?

# o addiu é usado para fazer somas imediatas e o valor imediato
#fornecido é negativo, que está fora do intervalo da adição imediata,
#o add é capaz de realizar adicao com -32.768 a 32.767, se quiser
#adicionar um valro negativos temos que usar complemento de 2,
#nesse caso o -5 em complemeto de 2 é 65531 e expressão ficaria da
#seguinte forma: $8, $9, 65531