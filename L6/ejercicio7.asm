#-- Ejercicio 7
#-- Escribir un programa para hacer un cifrado simple de la cadena definida en tiempo de compilaci�n "Hola\n". 
#-- Primero se imprime el mensaje original: "Hola". A continuaci�n se incrementan los 4 caracteres en una 
#-- unidad 1 (sin hacer bucles, porque todav�a no sabemos). 
#-- Finalmente se imprime la cadena resultante, que ya est� cifrada. 
#-- Para incrementar cada car�cter hay que cargarlo en un registro, sumarle una unidad, y volverlo a guardar en su posici�n

	#-- C�digos de los servicios 
	.include "servicios.asm"

	.data
	
msg:	.string "Hola\n"

	.text
	
	#-- Puntero a la cadena
	la a0, msg
	
	#-- Imprimir el mensaje original
	li a7, PRINT_STRING
	ecall
	
	#---------- CIFRADO
	#-- Leer cada byte de la cadena, incrementarlo y guardarlo
	lb t0, 0(a0)
	addi t0, t0, 1
	sb t0, 0(a0)
	
	lb t0, 1(a0)
	addi t0, t0, 1
	sb t0, 1(a0)
	
	lb t0, 2(a0)
	addi t0, t0, 1
	sb t0, 2(a0)
	
	lb t0, 3(a0)
	addi t0, t0, 1
	sb t0, 3(a0)
	
	#-- Imprimir el mensaje cifrado
	li a7, PRINT_STRING
	ecall

	#-- Terminar
	li a7, EXIT
	ecall 
