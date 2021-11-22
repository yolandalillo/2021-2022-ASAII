#-- Ejercicio 8
#-- Escribe un programa que pida una cadena al usuario, la cifre y la imprima. 
#-- El cifrado consistirá en sumar una constante K a cada uno de los caracteres de la cadena

	.include "servicios.asm"
	
	#-- Tamaño maximo cadena
	.eqv MAX 32
	
	#-- Constante que sumaremos para cifrar
	.eqv K 5
	
	.data

cadena: .space MAX
msg1: .string "Introduce cadena: "
msg2: .string "Cadena cifrada: "
	
	
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

	#-- Leer caracter
	lb t0, 0(a0)
	
	#-- Terminación palabra 
	li t1, '\n'
	beq t0,t1,fin
	
	#-- Sumar K al caracter
	addi t0,t0,K
	
	#-- Almacenar caracter ya cifrado
	sb t0, 0(a0)
	
	#-- Apuntar al siguiente
	addi a0,a0,1
	
	#-- Repetir
	b bucle


fin:	
	#-- Imprimir mensaje 2
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