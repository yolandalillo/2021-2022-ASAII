#-- Calcular la longitud de una cadena
#-- \0 y \n final de cadena
#-- ENTRADAS a0: puntero a la cadena
#-- SALIDAS a0: longitud de la cadena

	.globl len
	
	.text
	
len: 
	#-- Usamos t0 como contador de caracteres
	li t0,0
	
bucle:
	#-- Leer el caracter
	lb t1, 0(a0)
	
	#-- Si es 0 terminar
	beq t1, zero, fin
	
	#-- Si es \n terminar
	li t2, '\n'
	beq t1, t2, fin
	
	#-- Si es diferente a los finales de cadena 
	addi t0,t0,1
	
	#-- Apuntar al siguiente caracte
	addi a0,a0,1
	
	#-- Repetir
	b bucle
fin:
	#-- Devolver la longitud de la cadena por a0
	mv a0, t0
	
	ret