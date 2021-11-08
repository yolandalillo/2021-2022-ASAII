#-- EJERCICIO 6
#-- Escribe un programa que pida al usuario dos números enteros (n1 y n2) y te indique en la pantalla
#-- cuál es la relación entre ellos, imprimiendo alguna de estas cadenas: "n1 < n2", "n1 == n2" o "n1 > n2"

	.include "servicios.asm"
	
	.data
msg_n1: .string "Introduce n1: "
msg_n2: .string "Introduce n2: "
msg_menor: .string "n1 < n2"
msg_igual: .string "n1 == n2"
msg_mayor: .string "n1 > n2"

	.text
	
	#----- Pedir los numeros n1 y n2.
	#---  Guardarlos en t1 y t2 respectivamente
	
	la a0, msg_n1
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_INT
	ecall
	mv t1, a0
	
	la a0, msg_n2
	li a7, PRINT_STRING
	ecall
	
	li a7, READ_INT
	ecall
	mv t2, a0
	
	#--- Realizar las comparaciones entre t1 y t2
	
	#-- ¿n1 < n2?
	blt t1, t2, menor
	
	#-- ¿n1 > n2?
	bgt t1, t2, mayor
	
	#-- Si llega aqui es que son iguales n1 == n2
	la a0, msg_igual
	li a7, PRINT_STRING
	ecall 
	
	#-- Terminar
	b fin

	
menor:  #-- n1 es menor que n2
	la a0, msg_menor
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar
	b fin
	
mayor: #-- n1 es mayor que n2
	la a0, msg_mayor
	li a7, PRINT_STRING
	ecall
	
fin:	
	#-- Terminar
	li a7, EXIT
	ecall
