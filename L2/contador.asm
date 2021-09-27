#-- Programa contador
#-- El registro x5 se incremeta indefinidamente

	#-- Probando la directiva .text

	#-- Ensamblador: A partir de aquí deberás situar todo
	#-- en el segmentos de código
	.text #-- Instrucción ensamblador
	
	#-- Todo lo que coloquemos aquí se insertará en el 
	#-- segmento de código

	
	#-- Inicializar el registro x5 a 0
	addi x5, x0, 0
	
bucle:
	#-- Incrementar el registro x5 en una unidad
	addi x5, x5, 1  #-- x5 = x5 + 1
	
	#-- Repetir indefinidamente		
	b bucle

#-- Tres instrucciones cada una 4 bytes, ocupa 12 bytes en total