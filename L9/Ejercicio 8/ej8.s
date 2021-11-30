#-- Ejercicio 8

#-- Escribir la función cifrar, cuyo primer parámetro es el puntero a una cadena y el segundo el número K a incrementar cada 
#-- carácter para realizar el cifrado. Deberá estar en su propio fichero. El prototipo de la función es: void cifrar(*cad, k)

#-- Hacer un programa principal que pida al usuario una cadena, llame a la función cifrar, imprima la cadena cifrada y finalice. 
	.include "servicios.asm"

	.eqv MAX 1024 	#-- Tamaño máximo de la cadena
	
	.eqv K   5 	#-- Constante a sumar, para cifrar
			
	.data 
	
cad:	.space MAX	
msg1:	.string "Introduce cadena: "
msg2:	.string "Cadena cifrada: "

	.text
	
	#--Imprimir mensaje 1
	la a0, msg1
	li a7, PRINT_STRING
	ecall
	#--Pedir cadena al usuario
	la a0, cad
	li a1, MAX
	li a7, READ_STRING
	ecall
	#-- Almacenar el puntero a la cadena en s0
	#-- Solo lo podemos almacenar en registros estáticos
	#-- que son los únicos que está garantizado que mantiene
	#-- su valor al realizar una llamda a subrutina
	mv s0, a0
	
	#-- Llamar a la funcion cifrar(a0, K)
	li a1, K
	jal cifrar
fin: 
	#--Imprimir mensaje 2
	la a0, msg2
	li a7, PRINT_STRING
	ecall
	
	#--Imprimir la cadena
	mv a0,s0
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall