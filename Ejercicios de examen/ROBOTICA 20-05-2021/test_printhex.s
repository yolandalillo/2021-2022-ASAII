# -- Define las constantes que necesites en 
# -- el propio fichero

# -- Implementa en este fichero el programa de pruebas test_printhex

# -- Esta debe ser la salida:
# 10: 0x0000000a
# 11: 0x0000000b
# 12: 0x0000000c
# 13: 0x0000000d
# 14: 0x0000000e
# 15: 0x0000000f

# -- Debes llamar a la funcion printhex()
	
	.include "servicios.s"
	
	.data

		
msg:	.string ": "	
	
	.text
	
	# --  Valor inicial
	li s0, 10
	
	# -- Valor usado para repetir el bucle
	# -- y obtener los numeros del 10 al 15
	li t1, 16

bucle:
	# -- Imprimir el numero en decimal
	mv a0, s0
	li a7, PRINT_INT
	ecall

	# -- Imprimir cadena ": "
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	# -- Imprimir en hexadecimal
	mv a0, s0
	jal printhex
	
	# -- Incrementar el numero
	addi s0, s0, 1
	
	# -- Mientras s0 sea menor que 16 repetir el bucle
	blt s0, t1, bucle

	#-- Terminar
	li a7, EXIT
	ecall