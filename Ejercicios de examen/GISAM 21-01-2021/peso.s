#-- Calcular la suma de todos los caracteres ASCII
#-- Parametro de entrada a0: Puntero a la cadena de texto
#-- Parametro de salida a0: Devolver el valor caducado

	.globl peso
	
	.text
	
	#-- Función hoja no necesitamos pila para guardar la direccion de retorno
	
peso:
	#-- Peso inicial: 0
	li t0, 0
	
bucle:

	#-- Leer siguiente caracter de la cadena
	lb t1, 0(a0)
	
	#-- Si es 0, terminal
	beq t1, zero, fin
	
	#-- Si es \n terminar
	li t2, '\n'
	beq t1, t2, fin
	
	#-- Sumar el valor actual del caracter al contador de peso
	add t0, t0, t1
	
	#-- Apuntar al siguiente
	addi a0, a0, 1
	
	b bucle
	
fin:
	#-- Devolver el peso
	mv a0, t0
	
	ret