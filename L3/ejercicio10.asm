
.data
memoria:

.text
#-- Puntero para acceder a la memoria, en x5
 la x5, memoria
	
 #-- Valor de test a escribir:
 li x10, 0xAA5555AA
	
 #-- Escribir en la primera posicion
 sw x10, 0(x5)
	
 #-- Escribir en la cuarta palabra
 sw x10, 12(x5)
	
 #-- Escribir en la quinta palabra
 sw x10, 16(x5)
	
 #-- Escribir en la octava palabra
 sw x10, 0x28(x5)
#-- Terminar
li a7, 10
ecall
