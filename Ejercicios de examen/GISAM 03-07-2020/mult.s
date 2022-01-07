#--------------------------------------------
#-- Rellena estos datos antes de entregar:
#-- Nombre:  Yolanda Lillo
#--------------------------------------------

# -----------------------------------------------------
# --- Funcion mult(a,b): Calcular a * b
# -- Entradas:
#--  a0: Primero operando  
#--  a1: Segundo operando
#-- Salidas
#--   a0: a*b
#-------------------------------------------------------  

# --- Implementa aqui la funcion	

		.text
		
		.globl mult
		
mult:	
	#-- Como es función hoja no necesitamos crear pila
	#-- El resultado se calcula en t0
	li t0, 0
	
	#-- Necesidamos un bucle para realizar a0 veces la operación
bucle:
	#-- Si a0 = 0 terminar
	beq a0, zero, fin
	
	#-- Calcular t0 = t0 + a1
	add t0, t0, a1
	
	#-- Decrementar a0
	addi a0, a0 ,-1
	
	b bucle

fin:
	#-- Obtener resultado
	mv a0, t0
	ret

