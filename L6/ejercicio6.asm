#-- Ejercicio 6
#-- Escribe un programa en el que se defina la cadena "Hola\n" en tiempo de compilación. 
#-- El programa la imprimirá en la consola. A continuación accederá a memoria y cambiará 
#-- el carácter 'a' por una 'i', e imprimirá la nueva cadena. 

	#-- Código de los servicios 
	.include "servicios.asm"

	.data
	
	#-- Cadena definida 
hola:	.string "Hola\n"

	.text
	
	#-- Imprimir la cadena 
	la a0, hola
	li a7, PRINT_STRING
	ecall
	
	#-- Modificar la 'a' por una 'i'
	li t1, 'i' #-- Nuevo caracter
	
	#-- La 'a' está 3 bytes adelante
	sb t1, 3(a0)
	
	#-- Imprimir la nueva cadena
	la a0, hola
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall
