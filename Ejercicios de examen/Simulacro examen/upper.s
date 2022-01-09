#-- Subrutina upper
#--
#-- Convertir a mayúsculas
#--
#-- a0: valor de entrada, puntero a la cadena
#--
#-- Valor de salida no hay

	.globl upper
	
	.text
	
upper:

bucle:
	#-- Leer caracter actual
	lb t0, 0(a0)
	#-- Terminar si es cero 
	beq t0,zero,fin #-- Tambien podemos usar beqz t0,fin
	
	#-- Caracter es menor que 'a': no se toca
	li t1, 'a'
	blt t0, t1, next 
	
	#-- Caracter es mayor que 'z': no se toca
	li t1, 'z'
	bgt t0, t1, next
	
	#-- Es un caracter entre 'a' y 'z': pasarlo a mayusculas
	addi t0, t0, -32
	
	#-- Almacenarlo
	sb t0, 0(a0)
next:
	#-- Apuntar al siguiente
	addi a0,a0,1
	b bucle
fin:
	ret
	