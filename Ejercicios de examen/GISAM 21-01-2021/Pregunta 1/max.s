#-- Función max(a,b): Calcular el valor máximo de los números a y b
#-- Dos parámetros de entrada a0: número a, a1: número b
#-- Salida a0: valor maximo (a,b)

	.globl max
	
	.text

max:
	#-- Si a (a0)> b(a1) devolver valor máximo (a0)
	bgt a0, a1, max_a0
	
	#-- Mover valor máximo de a0 a a1
	mv a0, a1
	
max_a0:

	ret
	
	