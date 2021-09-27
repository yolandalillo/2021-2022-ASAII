#-- Programa contador
#-- El registro x5 se incremeta indefinidamente

	#-- Probando la directiva .text

	#-- Ensamblador: A partir de aqu� deber�s situar todo
	#-- en el segmentos de c�digo
	.text #-- Instrucci�n ensamblador
	
	#-- Todo lo que coloquemos aqu� se insertar� en el 
	#-- segmento de c�digo

	
	#-- Inicializar el registro x5 a 0
	addi x5, x0, 0
	
bucle:
	#-- Incrementar el registro x5 en una unidad
	addi x5, x5, 1  #-- x5 = x5 + 1
	
	#-- Repetir indefinidamente		
	b bucle

#-- Tres instrucciones cada una 4 bytes, ocupa 12 bytes en total