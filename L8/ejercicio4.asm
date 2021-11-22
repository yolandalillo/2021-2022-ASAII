#-- Ejercicio 4
#-- Escribir un programa para realizar la conversi�n de una cadena de 2 caracteres en un n�mero. 
#-- Esta cadena se pide al usuario. NO se realizar� comprobaci�n de errores. Daremos por supuesto 
#-- que los caracteres introducidos por el usuario son correctos. El resultado de la conversi�n 
#-- se imprime en la consola. Usar la f�rmula num = (d1 - 48) * 10 + (d0 - 48), donde d1 es el 
#-- primer car�cter de la cadena y d0 el segundo

	.include "servicios.asm"
	
	#-- N�mero m�ximo de car�cteres
	.eqv MAX 3
	
	.data
	
cadena: .space MAX

msg1:   .string "\nIntroduzca cadena de dos d�gitos: "
msg2:   .string "\nNumero: "
	
	.text
	
	#-- Imprimir mensaje 1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Pedir al usuario la cadena
	la a0, cadena
	li a1, MAX
	li a7, READ_STRING
	ecall
	
	#-- Leer los digitos
	#-- t0 = d0
	lb t0, 1(a0)
	
	#-- t1 = d1
	lb t1, 0(a0)	
					
	#-- Calcular la expresion: num = (d1 - 48) * 10 + (d0 - 48)
	#-- t2 = 48
	li t2, 48
	
	#-- t3 = d0 - 48
	sub t3, t0, t2
	
	#-- t4 = d1 - 48
	sub t4, t1, t2
	
	#-- t6 = (d1 - 48) * 10
	li t5, 10
	mul t6, t4, t5
	
	#-- t6 = (d1 - 48) * 10 + (d0 - 48)
	add t6, t6, t3
	
	#-- Imprimir el mensaje 2
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#-- Imprimir el numero calculado
	mv a0, t6
	li a7, PRINT_INT
	ecall
 
	#-- Terminar
	li a7, EXIT
	ecall	