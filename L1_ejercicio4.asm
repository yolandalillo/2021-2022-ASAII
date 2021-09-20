# Escribe un programa que ejecute las siguientes acciones:
# Inicializar el registro 6 a 0
# Restarle 1
# Terminar ¿Cual es el valor hexadecimal del registro 6 al terminar el programa?

.text
# Inicializar el registro 6 a 0
addi x6,x0, 0
# Restarle 1
addi x6, x6, -1  #-- x6 = x6 -1
#-- Terminar
li a7,10
ecall

# Obtenemos el valor hexadecimal 0xFFFFFFFF
# OK -> Ejercicio terminado y correguido	