#-- Ejercicio 9

#---------------------------------------------------------------
#-- Funci�n void upper(*cad)
#-- ENTRADAS:
#--    * a0: Puntero a la cadena
#-- SALIDAS:
#--     Ninguna
#-----------------------------------------------------------------

	#-- Punto de entrada
	.globl upper
	
	.text
	
upper:
bucle:
	#-- Leemos el car�cter
	lb t0, 0(a0)
	
	#-- Condici�n para terminar
	beq t0, zero,fin
	
	#-- Si el caracter es <a o >z pasamos al siguiente
	li t1,'a'
	blt t0,t1,next
	
	li t1, 'z'
	bgt t0,t1,next
	
	#-- Hay que pasarlo a mayusculas
	addi t0,t0,32
	
	#-- Lo guardamos
	sb t0,0(a0)

next:
	#-- Pasar al siguiente
	addi t0,t0,1
	
	#--Repetir
	b bucle

fin:
	ret