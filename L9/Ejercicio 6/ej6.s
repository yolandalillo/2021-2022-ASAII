#-- Ejercicio 6
#-- Usando la funci�n count del ejercicio 5 (en su propio fichero) y la funci�n len del ejecicio 4 (tambi�n en su propio fichero), 
#-- crear un programa principal (en otro fichero) que pida al usuario una cadena, imprima su longitud, y luego imprima el n�mero 
#-- de veces que aparece el car�cter 'a' y 'e'

	.include "servicios.asm"
	
	.eqv MAX 1024 #-- Longitud m�xima de la cadena
	
	.data
msg1:	.string "\nIntroduce una cadena: "
msg2:   .string "\nNumero de caracteres 'a': "
msg3:   .string "\nNumero de caracteres 'e': "
msg4:   .string "\nLongitud total: "

cad: .space MAX #-- Cadena introducida por el usuario

	.text
	#-----------------------------------
	#-- Imprimir mensaje 1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir cadena
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Almacenar el puntero a la cadena en s0
	#-- �OJO! Solo podemos almacenarlo en un registro est�tico...
	#-- porque tras la llamada a subrutina est� garantizado 
	#-- que su valor se mantiene... Pero NO EST� GARANTIZADO
	#-- para los temporales
	mv s0, a0
	
	#-- Llamar a la funcion n=len(a0)
	jal len
	#-- a0 contiene la longitud
	mv t0,a0
	
	#-----------------------------------
	#-- Imprimir mensaje 4
	la a0, msg4
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir longitud de la cadena
	mv a0, t0
	li a7, PRINT_INT
	ecall
	#-- Llamar a la funcion na = count(a0, 'a')
	mv a0, s0
	li a1, 'a'
	jal count
	
	#-- a0 Contiene el n�mero de 'a'. Lo guardamos en t0
	mv t0, a0
	#-----------------------------------
	#-- Imprimir mensaje 2
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir la cantidad
	mv a0, t0
	li a7, PRINT_INT
	ecall
	
	#-- Llamar a la funci�n na =  count(a0, 'e')
	mv a0, s0
	li a1, 'e'
	jal count
	
	#-- a0 Contiene el n�mero de 'e'. Lo guardamos en t0
	mv t0, a0
	
	#-----------------------------------
	#-- Imprimir mensaje 3
	la a0, msg3
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir la cantidad
	mv a0, t0
	li a7, PRINT_INT
	
	#-- Terminar
	li a7, EXIT
	ecall
