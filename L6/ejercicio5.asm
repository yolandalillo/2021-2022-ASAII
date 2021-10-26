#-- Ejercicio 5
#-- Analiza el siguiente programa y responde a las preguntas. El código lo ha hecho 
#-- una persona que no ha puesto ningún comentario, por lo que no está claro cuál 
#-- es el propósito del código

	.data
	
	.string "1234"
v1:	.byte 0xAA
	.byte 0xBB
	.byte 0xCC
	.byte 0xDD
	
	.text
	
	la t0, v1
	lw t1, 0(t0)
	
	li a7,10
	ecall

#-- ¿Cual es el tamaño total en bytes de los datos almacenados en el segmento de datos?
#-- La cadena ocupa 5 bytes (4 caracteres + el \0). A continuación hay definidos 4 bytes, por lo que el tamaño total 
#-- es de 5 + 4 = 9 bytes. 
#-- ¿Cuántas palabras del segmento de datos se están usando?
#-- En total los datos ocupan 3 palabras, aunque de la última no se completa, solo se usa un byte.
#-- ¿Cuales son los bytes almacenados?
#-- Los bytes almacenados, son '1','2','3','4','\0',0xAA,0xBB,0xCC, 0xDD
#-- Ejecuta el programa. ¿Qué ocurre?
#-- Da un error en ejecución
#-- Soluciona el error, pero sólo modificando el segmento de datos
	
	.data
	
	.string "1234"
	
	#-- Solucion 1: Alinear la etiqueta v1
	.align 2
	
v1:	.byte 0xAA
	.byte 0xBB
	.byte 0xCC
	.byte 0xDD
	
	.text
	
	la t0, v1
	lw t1, 0(t0)
	
	li a7,10
	ecall
#-- Solución ejercicio 5
	
	.data
	
	.string "1234"
	
v1:	.word 0xDDCCBBAA
	
	.text
	
	la t0, v1
	lw t1, 0(t0)
	
	li a7,10
	ecall

#-- A partir del código original, soluciona el error pero sólo modificando el segmento de código
#-- Solución ejercicio 5
	
	.data
	
	.string "1234"
v1:	.byte 0xAA
	.byte 0xBB
	.byte 0xCC
	.byte 0xDD
	
	.text
	
	la t0, v1
	lb t1, 0(t0)
	
	li a7,10
	ecall
