# Escribe un programa para RISC-V que asigne los siguientes valores
# a los registros indicados: x3=3, x4=4, x5=5, x6=6, x7=7 y x8=8. 
# Ejecútalo paso a paso y comprueba que funciona correctamente

.text

addi x3, x0, 3
addi x4, x0, 4
addi x5, x0, 5
addi x6, x0, 6
addi x7, x0, 7
addi x8, x0, 8

#-- Para terminar
li a7,10
ecall

# OK -> Ejercicio terminado y correguido	
# Alternativa al ejercicio
# Usando li x3, 3   # x3 = 3 y así sucesivamente
