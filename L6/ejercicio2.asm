#-- Ejercicio 2
#-- Escribe un programa que defina las dos cadenas siguientes: "Hola\n" y "Adios\n" en tiempo de compilación, 
#-- y que las imprima por la consola, de manera independiente (primero una cadena y luego la otra)

	.include "servicios.asm"

	.data
	
cad1:	.string "Hola\n"
cad2:	.string "Adios\n"
	
		
	.text
	
	#-- Imprimir la primera cadena
	la a0, cad1
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir la segunda cadena
	la a0, cad2
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall
