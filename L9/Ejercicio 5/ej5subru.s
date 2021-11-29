#-- Ejercicio 5 
#-- Subrutina para contar el numero de veces que aparece un car�cter
#-- int count(*cad, car)
#-- ENTRADAS:
#--    * a0: Puntero a la cadena
#--    * a1: Car�cter a contador
#-- SALIDAS:	
#--    * a0: N�mero de veces que aparece el caracter en la cadena

	#-- Punto de entrada
	.globl count
	
#-- Punto de entrada
count: 
	#-- Se inicializa el contador t0 a 0
	li t0, 0
bucle:
	#-- Leer caracter de la cadena (t1)
	lb t1, 0(a0)
	
	#-- Si es '\0' terminar
	li t2, '\n'
	beq t1, t2, fin

	#-- Comprobar si el caracter es a1
	#-- Si NO lo es pasar al siguiente
	bne t1, a1, next
	
	#-- Caracter detectado. Incrementar contador
	addi t0, t0, 1
	
next: 
	#-- Apuntar al siguiente
	addi a0, a0, 1
	#-- Repetir el bucle
	b bucle

fin:
	#-- Devolver el n�mero de caracteres
	mv a0,t0
	#-- Punto de salida --> Retornar
	ret