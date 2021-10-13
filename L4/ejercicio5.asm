#-- Modifica el programa del ejercicio 4 para que el valor del contador se envíe a 
#-- la dirección 0xFFFF0010 donde se encuentra el Display de 7 segmentos. 
#-- Haz que el valor inicial sea de 0, y el incremento de 1. Lanza el display en el simulador
#-- y conéctalo. Simula el programa (no olvides el Breakpoint o bien bajar la velocidad de la ejecución). 
#-- Observa lo que aparece en el display. ¿Qué valores del contador hace que aparezcan dígitos o 
#-- letras reconocibles en el display? (hay 128 combinaciones posibles, 2 elevado a 7, sin tener en cuenta el punto)

#-- Ejercicio 1
#-- Contador con valor incial e incremento

	#-- DEFINICION de constantes
	.eqv INICIO 100   #-- Valor de inicio del contador
	.eqv INC 10       #-- Incremento del contador
	.eqv DISPLAY 0XFFFF0010
	

	#-- Código
	.text
	
	#-- Usamos el registro x5 como contador
	#-- x5 = INICIO (Inicializacion)
	li x5, INICIO
	
	#-- PUntero al puerto de salida
	li x6, DISPLAY

bucle:	
	#-- Actualizar la variable contador
	#-- Almacenar el valor de x5 en contador
	sw x5, 0(x6)
	
	#-- Incrementar el contador
	addi x5, x5, INC
	
	#-- Bucle infinito
	b bucle