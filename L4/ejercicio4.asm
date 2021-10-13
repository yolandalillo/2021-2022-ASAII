#-- Modifica el programa del contador del ejercicio 1 para que en vez de almacenar
#-- la cuenta en la variale contador, se envíe por el puerto de salida de la 
#-- dirección 0xFFFF0000. Símulalo, coloca un Breakpoint en el bucle principal, y
#-- comprueba que en esa dirección se van almacenando los valores de contador

#-- Ejercicio 1
#-- Contador con valor incial e incremento

	#-- DEFINICION de constantes
	.eqv INICIO 100   #-- Valor de inicio del contador
	.eqv INC 10       #-- Incremento del contador
	.eqv LEDS 0xFFFF0000
	

	#-- Código
	.text
	
	#-- Usamos el registro x5 como contador
	#-- x5 = INICIO (Inicializacion)
	li x5, INICIO
	
	#-- PUntero al puerto de salida
	li x6, LEDS

bucle:	
	#-- Actualizar la variable contador
	#-- Almacenar el valor de x5 en contador
	sw x5, 0(x6)
	
	#-- Incrementar el contador
	addi x5, x5, INC
	
	#-- Bucle infinito
	b bucle