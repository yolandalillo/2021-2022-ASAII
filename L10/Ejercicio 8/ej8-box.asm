#-- Ejercicio 8

#--La función box(car, anch, alt) tiene tres argumentos de entrada: un carácter, la anchura y la altura. No tiene ningún parámetro de salida. Imprime un rectángulo en la consola formado por el carácter car, y con las dimensiones de altura y anchura indicadas en los parámetros

#-----------------------------------------------------
#-- Subrutina box(car, anch, alt)
#--
#-- Imprimir un rectangulo de caracteres car,
#-- de anchura anch y altura alt
#--
#-- ENTRADAS:
#--  a0: Caracter a usar para dibujar el rectangulo
#--  a1: Anchura del rectangulo
#--  a2: Altura del rectangulo
#-- SALIDAS: Ninguna
#----------------------------------------------------

	#-- Punto de entrada
	.globl box
	
	.text
box:	

	#--- Crear pila
	addi sp, sp, -16
	
	#-- Guardar direccion de retorno
	sw ra, 12(sp)
	
	#-- Guardar parametros en la pila
	sw a0, 0(sp)
	sw a1, 4(sp)
	
	#-- El registro s0 lo usamos como contador
	#-- Hay que guardarlo en la pila
	sw s0, 8(sp)
	
	#-- Ahora es seguro modificar s0
	mv s0, a2
	
bucle:
	#--- Si quedan 0 lineas por imprimir--> terminar	
	beq s0, zero, fin
	
	#-- Recuperar parametros de la pila
	lw a0, 0(sp) #-- Caracter
	lw a1, 4(sp) #-- Anchura
	
	#-- Imprimir una linea
	jal line
	
	#-- Queda un linea menos por imprimir
	addi s0, s0, -1
	
	#-- Siguiente linea
	b bucle

fin:

	#-- Restaurar valor de s0
	lw s0, 8(sp)

	#-- Recuperar direccion de retorno
	lw ra, 12(sp)

	addi sp, sp, 16
	ret