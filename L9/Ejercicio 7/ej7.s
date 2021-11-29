#-- Ejercicio 7

#-- Escribir la función palindromo que tiene un parámetro de entrada con el puntero a la cadena a analizar y devuelve un 1 si es
#--  un palíndromo y un 0 si NO lo es. Prototipo: int palindromo(*cad)

#-- Escribir la subrutina en un fichero separado

#-- Escribe un programa principal para probar la función palindromo, que pida al usuario una cadena e imprima un mensaje indicando
#-- si es o no un palíndromo. Esto se repite en un bucle hasta que el usuario introduzca una cadena vacía (pulsando Enter). En ese 
#-- momento terminará. La cadena vacía se caracteriza porque su primer elemento es el carácter '\n'

	.include "servicios.asm"
	
	.eqv MAX 1024
	
	.data
cadena: .space MAX #-- Almacenamiento de la cadena introducida por el usuario
	#-- Mensajes a imprimir en la consola
msg1:    .string "\n\nIntroduzca cadena: "
pal_si:  .string "ES UN PALINDROMO"
pal_no:  .string "NO es palindromo"

	.text
bucle:
	#--Imprmir mensaje 1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	
	#-- Esperar a que el usuario introduzca la cadena
	la a0, cadena
	li a1, MAX
	li a7, READ_STRING
	ecall 
	
	#-- Si el primer caracter de la cadena es '\n' --> Hemos terminado
	lb t0, 0(a0)
	li t1, '\n'
	beq t0, t1, fin
	
	#-- Llamar a la funcion palindromo(a0)
	jal palindromo
	
	#-- a0 contiene la respuesta
	beq a0, zero, no_palindromo
	
	#-- ES un palindromo
	#-- Imprimir mensaje
	la a0, pal_si
	li a7, PRINT_STRING
	ecall
	
	#-- Repetir
	b bucle
	
no_palindromo:
	#-- Imprimir mensaje
	la a0, pal_no
	li a7, PRINT_STRING
	ecall

	#-- Repetir	
	b bucle
fin:
        #-- Terminar
	li a7, EXIT
	ecall
