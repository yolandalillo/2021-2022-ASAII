En un fichero tenemos este programa principal, que imprime un mensaje en la consola, llama a la función tarea1() y termina
```
#-- Programa principal

	.include "servicios.asm"
	
	.data
msg:	.string "Programa principal\n"
	
	.text
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Llamar a la funcion tarea1
	jal tarea1
	
	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
	#-- Terminar
	li a7, EXIT
	ecall
 ```

La función tarea1() se encuentra en otro fichero:
```

#---------------------------------
#-- Subrutina Tarea 1
#-- ENTRADAS: Ninguna
#-- SALIDAS: Ninguna
#---------------------------------

	#-- Punto de entrada
	.globl tarea1
	
	.include "servicios.asm"

	.data
msg:	.string "  Tarea 1\n" 	
			
	.text
	
	
#-------- Punto de entrada
tarea1:

	
	#-- Imprimir el mensaje
	la a0, msg
	li a7, PRINT_STRING
	ecall
	
			
#------- Punto de salida
	ret

```

Modificar la función tarea1() para que imprima el mensaje, llame a la función tarea2(), definida en otro fichero separado, imprima de nuevo el mensaje y termine. La función tarea2() imprime el mensaje " Tarea2" y termina
