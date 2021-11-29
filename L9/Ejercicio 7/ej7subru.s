#-- Ejercicio 7
#--------------------------------------------------------------
#-- Funci�n para detectar si una cadena es pal�ndromo o no
#-- ENTRADAS:
#--   * a0: Puntero a la cadena a analizar
#-- SALIDAS:
#--   * a0:  0: NO es pal�ndromo
#--          1: SI es pal�ndromo
#-------------------------------------------------------------

	#-- Punto de entrada
	.globl palindromo
	
	.text
palindromo:
	#-- Inicializar los punteros a la cadena
	#-- t0: Puntero izquierdo
	#-- t1: Puntero derecho
	mv t0, a0
	mv t1, t0
	 
	#----------- Actualizar t1 para que apunte al final de la cadena
	#-- Comprobar si el caracter actual es 0
bucle1:
	lb t2, 0(t1)
	beq t2, zero, final_cadena
	
	#-- Apuntar al siguiente caracter
	addi t1, t1, 1
	b bucle1

final_cadena:
	#-- t1 apunta al final de la cadena
	#-- Hay que retroceder 2 caracteres: uno es el 0, el otro \n
	addi t1, t1, -2
	
	#-- Ahora t1 apunta al �ltimo car�cter ASCII legible
bucle:
	#-- Condicion de salida: si el puntero derecho (t1) 
        #   es menor o igual que el izquierdo (t0):Terminamos: 
        #   es un palindromo
	ble t1, t0, es_palindromo
	
	#-- Leer caracteres izquierdo (t2) y derecho (t3)
	lb t2, 0(t0)
	lb t3, 0(t1)
	
	#-- Si no son iguales: no es un palindromo
	bne t2, t3, no_palindromo
	
	#-- Actualizar los punteros
	addi t0, t0, 1  #-- Puntero izquierdo
	addi t1, t1, -1 #-- Puntero derecho
	
	#-- repetir
	b bucle

no_palindromo:
	#-- a0 = 0:  No es un palindromo
	li a0, 0
	
	b fin

es_palindromo:
	#-- a1 = 0:  No es un palindromo
	li a0, 1
	
fin:
	ret
	