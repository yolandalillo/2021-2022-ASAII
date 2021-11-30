#-- Ejercicio 9

#-- Escribir la funci�n upper, cuyo primer par�metro es el puntero a una cadena y no devuelve nada. Se encarga de pasar 
#-- la cadena a may�sculas. Los caracteres que no sean 'a'-'z' se dejan igual. Deber� estar en un fichero separado. El 
#-- prototipo de la funci�n es: void upper(*cad)

#-- Hacer un programa principal que pida al usuario una cadena, llame a la funci�n upper, imprima la cadena en may�sculas y finalice. 

	.include "servicios.asm"
	
	.eqv MAX 1024
	
	.data
cad: .space MAX
msg1: .string "Introduce la cadena: "
msg2: .string "Cadena en may�sculas: "

	.text
	
	#--Imprimir mensaje 1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir cadena al usuario
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#--Almacenar a0 en s0
	mv s0,a0
	
	#-- Pasar cadena a mayuculas
	jal upper
	
	#-- Imprimir mensaje 2
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir la cadena
	mv a0,s0
	li a7, PRINT_STRING
	ecall
	
	#--Terminar 
	li a7, EXIT
	ecall