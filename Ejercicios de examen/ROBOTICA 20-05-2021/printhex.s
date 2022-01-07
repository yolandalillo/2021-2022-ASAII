# -- Define las constantes que necesites en 
# -- el propio fichero

# -- Implementa aqui la funcion printhex()	

#-------------------------------------------
# void printhex(num)
# Entradas:
#   a0: Numero a imprimir en hexadecimal
# Devuelve:
#   nada
#-------------------------------------------
	.include "servicios.s"
	
	.globl printhex
	.text

printhex:
	
	# -- Imprimir numero en hexadecimal
	li a7, PRINT_HEX
	ecall
	
	# -- Imprimir Salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#-- Retornar
	ret