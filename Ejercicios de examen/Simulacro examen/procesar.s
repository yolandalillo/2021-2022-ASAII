#-- Subrutina procesar
#--
#-- Copia cadena en destino y la convierte en mayusculas
#--
#-- Entradas
#-- a0: cadena original
#-- a1: cadena destino
#--
#-- No hay salidas

	.globl procesar
	
	.text

procesar:
        #-- Necesitamos crear la pila para guardar la direccion de retorno
        addi sp, sp, -16
        
        #-- Guardar registro ra en la pila
        sw ra, 12(sp)
        
        #-- Guardar en la pila a1,  
        #-- con la direccion destino, porque la necesitaremos despues
        sw a1, 0(sp)  #-- Direccion destino
        
        #-- llamar a copiar
        jal copiar

        #-- Recuperar la direccion destino en a0
        lw a0, 0(sp)
        
        #-- Llamar a upper
        jal upper
        
        #-- Recuperar la direccion de retorno
        lw ra, 12(sp)
        
        #-- Liberaer la pila
        addi sp, sp, 16

	ret