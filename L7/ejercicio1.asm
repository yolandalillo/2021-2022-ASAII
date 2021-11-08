#-- EJERCICIO1
#-- Escribe un programa que pida al usuario dos números enteros e imprima el mensaje "IGUALES" si son iguales 
#-- y "DIFERENTES" si son distintos. Utiliza la instrucción beq para hacer la comparación. 

	.include "servicios.asm"
	.data
	#-- Mensajes consolo
msg_iguales: .string "IGUALES"
msg_diferent: .string "DIFERENTES"
msg_number: .string "INTRODUCE UN NÚMERO: "

 	.text
 	
 	#-- Pedir numeros al usuario y guardarlos en los registros t0 y t1
	
	#-- Print "Introduce un numero"
	la a0, msg_number
	li a7, PRINT_STRING
	ecall
	
	#-- Leer primer entero (t0)
	li a7, READ_INT
	ecall
	mv t0, a0 
	
	#-- Print "Introduce un numero"
	la a0, msg_number
	li a7, PRINT_STRING
	ecall
	
	#-- Leer segundo entero (t1)
	li a7, READ_INT
	ecall
	mv t1, a0
	
	#----- Realizar la comparacion
	beq t0, t1, iguales
	
	#-- NO son iguales
	la a0, msg_diferent
	li a7, PRINT_STRING
	ecall
	
	b fin

	#-- Son iguales
iguales:
	la a0, msg_iguales
	li a7, PRINT_STRING
	ecall	
	
	
	#--- PUNTO DE SALIDA
fin:	li a7, EXIT
	ecall
	