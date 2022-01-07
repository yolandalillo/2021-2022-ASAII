#--------------------------------------------
#-- Rellena estos datos antes de entregar:
#-- Nombre:  Yolanda Lillo
#--------------------------------------------

##---------------------------------------------
#  Programa de prueba de la multiplicacion  
#----------------------------------------------

#-- Implementa aqui el programa de prueba de la función mult

## -- Asegurate que la salida de tu programa sea exactamente igual que el indicado
#-- en el enunciado (es una especificacion)

	.include "servicios.s"
	
	.data
msg1:   .string "Introduce un numero entero no negativo: "
msg2:   .string " * "
msg3:   .string " = "

	.text
	
	#-- Pedir un numero al usuario
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Leer el n�mero
	li a7, READ_INT
	ecall #-- NO FUNCIONABA PORQUE ME FALTABA ESTO --> SOLUCIONADO
	#-- Almacenar el numero en s0
	mv s0, a0
	
	#-- Bucle para calcular la tabla de multiplicar
	#-- Usamos s1 como contador
	li s1, 0
	
bucle:
	#--- Imprimir el mensaje del calculo: "Digito" * "numero" = "Resultado"
	#-- Imprimir el numero del usuario
	mv a0, s0
	li a7, PRINT_INT
	ecall
	
	#-- Imprimir la cadeba " * "
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Imprmir el contador
	mv a0, s1
	li a7, PRINT_INT
	ecall
	
	#-- Imprimir el igual
	la a0, msg3
	li a7, PRINT_STRING
	ecall
	
	# -- Realizar la multiplicacion s0 * s1
	mv a0, s0
	mv a1, s1
	jal mult
	
	mv t0, a0
	
	# ------ Imprimir el resultado
	# -- Resultado
	mv a0, t0
	li a7, PRINT_INT
	ecall
	
	# --- Imprimir un salto de linea
	li a0, '\n'
	li a7, PRINT_CHAR
	ecall
	
	#--- Incrementar el contador
	addi s1, s1, 1
	
	# -- Si s1 es menor a 11, repetir 
	li t0, 11
	blt s1, t0, bucle 
	
	# -- La tabla est� completa
	
	# -- Terminar
	li a7, EXIT
	ecall