#-- Ejercicio 9
#-- Escribe un programa que pida una cadena al usuario y los caracteres que estén 
#-- en minúsculas los pase a Mayúsculas. Sólo los caracteres 'a' - 'z' se pasan 
#-- a mayúsculas, el resto se dejan igual

	.include "servicios.asm"
	
	.eqv MAX 32
	
	.data

cadena: .space MAX
msg1: .string "Introduce la cadena: "
msg2: .string "Cadena en mayusculas: "
	
	.text
	
	#-- Imprimir mensaje 1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir cadena al usuario
	la a0, cadena
	li a1, MAX
	li a7, READ_STRING
	ecall
	
bucle:
	#-- PASAR A MAYUSCULAS
	#-- Leer caracter
	lb t0, 0(a0)
	
	#-- Condición de terminación
	beq t0, zero, fin
	
	#-- Si es menor que 'a' o mayor que 'z'	 pasamos al siguiente
	li t1, 'a'
	blt t0, t1, siguiente
	
	li t1, 'z'
	bgt t0,t1,siguiente
	
	#-- Pasamos a mayusculas
	addi t0,t0,-32
	
	#-- Guardar
	sb t0, 0(a0)
	
siguiente:

	#-- Pasar al siguiente caracter
	addi a0,a0,1
	
	#-- repetir 
	b bucle
	
fin: 	
	#-- Imprimir el mensaje 2
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir cadena
	la a0, cadena
	li a7, PRINT_STRING
	ecall 
	
	#-- Terminar 
	li a7, EXIT
	ecall