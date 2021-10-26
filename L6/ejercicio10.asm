#-- Ejercicio 10
#-- Escribe un programa para leer el c�digo de cualquiera de las teclas de la primera fila del teclado hexadecimal. 
#-- Este c�digo se debe escribir en el puerto de salida del display de 7 segmentos izquierdo. 
#-- Meterlo en un bucle infinito para que esta operaci�n se realiza todo el tiempo. 
#-- Solucion al ejercicio 10
#-- Leer las teclas de la primera fila del teclado hexadecimal
#-- y escribir su c�digo en el puerto de salida del display
#-- izquierdo

	#-- Direccion base de acceso a perifericos
	.eqv BASE 0xFFFF0010
	
	#--- Offset para accdeder a los diferentes perifericos
	
	#-- Display izquierdo
	.eqv DISP_L 01  #-- BASE + 1
	
	#-- Seleccion de la fila
	.eqv KEY_ENA 02  #-- BASE + 2
	
	#-- Lectura del codigo de tecla
	.eqv KEY_RD  04  #-- BASE + 4
	
	.text
	
	#-- Puntero base de acceso a perifericos
	li t0, BASE

	#-- Bucle infinito que est� constntemente leyendo la 
	#-- primera fila
bucle:		
	#-- Seleccionar la fila 1
	li t1, 01
	sb t1, KEY_ENA(t0)
	
	#-- Leer la tecla
	lb t2, KEY_RD(t0)
	
	#-- Escribir el c�digo en el display izquierdo
	sb t2, DISP_L(t0)
	
	b bucle
