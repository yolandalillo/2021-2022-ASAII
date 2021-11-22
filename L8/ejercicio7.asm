#-- Ejercicio 7
#-- Escribe un programa que pida una cadena al usuario y que se almacene al comienzo 
#-- del segmento de datos. Luego el programa la copiará a otra posición de memoria. 
#-- Finalmente imprimirá la cadena copia en la consola

	.include "servicios.asm"
	
	.eqv MAX 32
	
	.data
	
cadena_original: .space MAX
cadena_destino: .space MAX
msg1: .string "\nIntroduce cadena: "
msg2: .string "Cadena copia:"
	
	.text
	
	#-- Imprimir mensaje 1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir cadena original
	la a0, cadena_original
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#--  Copiar cadena
	
	#-- Puntero hacia la cadena destino
	la t0, cadena_destino

bucle:

	#-- Leer caracter original
	lb t1, 0(a0)
	
	#-- Almacenarlo en la cadena destino
	sb t1, 0(t0)
	
	#-- Si es cero 
	beq t1, zero, fin
	
	#-- Sino incrementar punteros
	addi a0, a0, 1
	addi t0,t0,1
	
	#-- Repetir
	b bucle
	
fin:
	#-- Imprimir mensaje 2
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir cadena destino o cadena copiada
	la a0, cadena_destino
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall