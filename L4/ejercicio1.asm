#-- Escribe un programa que defina la variable contador cuyo valor inicial esté 
#-- dado por el identificador INICIO. Dentro de un bucle infinito se incrementará
#-- esta varible en la cantidad indicada por el identificador INC. Para comprobar 
#-- su funcionamiento usa los valores de INICIO = 100 e INC=10. No olvides colocar 
#-- un Breakpoint en el bucle infinito, o bien ejecutarlo paso a paso

#-- Ejercicio 1
#-- Contador con valor incial e incremento

	#-- DEFINICION de constantes
	.eqv INICIO 100   #-- Valor de inicio del contador
	.eqv INC 10       #-- Incremento del contador
	
	#-- Variables
	.data
	
contador:  .word 0

	#-- Código
	.text
	
	#-- Usamos el registro x5 como contador
	#-- x5 = INICIO (Inicializacion)
	li x5, INICIO
	
	#-- PUntero a la variale contador: x6
	la x6, contador

bucle:	
	#-- Actualizar la variable contador
	#-- Almacenar el valor de x5 en contador
	sw x5, 0(x6)
	
	#-- Incrementar el contador
	addi x5, x5, INC
	
	#-- Bucle infinito
	b bucle
