#-- Programa para calcular la suma de los números enteros: 1+2+3+4+5+...
#-- El resultado se deja en el registros 6
#-- Usamos el registro x5 como contador: 1,2,3,4,5,6...
#-- En cada vuelta sumamos el valor de x5 a la cuenta acumulada en x6

	.text

	#-- Inicializamos los registros x5,x6 a 0
	addi x5, x0, 0
	addi x6, x0, 0
	
	#-- Bucle principal
bucle:
	#-- Incrementar contador principal
	addi x5, x5, 1   #-- x5 = x5 + 1
	
	#-- Obtener termino i-simo
	add x6, x6, x5  #-- x6 = x6 + x5
	
	#-- Repetir el bucle
	b bucle

	

	
#-- Tiene 5 instrucciones que corresponde a un total de 20 bytes
#-- Ejercicio terminado, comprobar tablas, tabla 2 no se muy bien como mirarla
#-- TABLA 1
#Direccion (alineada)	Instrucción en código máq.
#0x00400000	00000293
#0x00400004	00000313
#0x00400008	00128293
#0x0040000c	00530333
#0x00400010	ff9ff06f
# TABLA 2
#-- ¿Cómo hago que termine cuándo llega a 25? Solo es prácticar los breakpoints no terminar el bucle, el resultado es 325