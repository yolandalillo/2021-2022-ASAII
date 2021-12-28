#-- Funci�n max(a,b): Calcular el valor m�ximo de los n�meros a y b
#-- Dos par�metros de entrada a0: n�mero a, a1: n�mero b
#-- Salida a0: valor maximo (a,b)

	.globl max
	
	.text

max:
	#-- Si a (a0)> b(a1) devolver valor m�ximo (a0)
	bgt a0, a1, max_a0
	
	#-- Mover valor m�ximo de a0 a a1
	mv a0, a1
	
max_a0:

	ret
	
	