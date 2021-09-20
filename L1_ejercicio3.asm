# Escribe un programa para el RISC-V para que el registro 
# x3 tome los valores 0,1,2,3,4,5..., 
# el x4 0,3,6,9,12,15... y el x5 0,5,10,15,20,25.... indefinidamente. 
# Ejecútalo paso a paso para comprobarlo

	.text
	
	#-- Inicializar el registro x3 a 0
	addi x3, x0, 0
	#-- Inicializar el registro x4 a 0
	addi x4, x0, 0
	#-- Inicializar el registro x5 a 0
	addi x5, x0, 0
bucle:
	#-- Incrementar el registro x3 en una unidad
	addi x3, x3, 1  #-- x3 = x3 + 1
	#-- Incrementar el registro x4 de tres en tres
	addi x4, x4, 3  #-- x4 = x4 + 3
	#-- Incrementar el registro x5 de cinco en cinco
	addi x5, x5, 5  #-- x3 = x3 + 1
	
	#-- Repetir indefinidamente		
	b bucle
	
# OK -> Ejercicio terminado y correguido	