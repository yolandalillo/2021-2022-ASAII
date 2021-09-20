# Modifica el programa del contador de las actividades guiadas
# para que se incremente el registro x5 de dos en dos. 
# Ejec�talo paso a paso para comprobar que funciona bien. 
# �Cu�l es la direcci�n de la primera instrucci�n?

#-- Programa contador
#-- El registro x5 se incremeta indefinidamente

	.text
	
	#-- Inicializar el registro x5 a 0
	addi x5, x0, 0
	
bucle:
	#-- Incrementar el registro x5 de dos en dos
	addi x5, x5, 2  #-- x5 = x5 + 2
	
	#-- Repetir indefinidamente		
	b bucle

# OK -> Ejercicio terminado y correguido	