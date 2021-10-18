#-- Ejercicio 2

#-- Escribe un programa que realice la suma de dos números enteros introducidos por el teclado. 
#-- Se introducen los dos números y se muestra el resultado de la suma en la consola. Intenta usar buenas prácticas de programación. 
#-- Activa los diálogos emergentes para la introducción de datos

#-- Prueba el programa ejecutándolo desde la línea de comandos directamente

.eqv READ_INT 5
.eqv EXIT 10
.eqv PRINT_INT 10

.text
#-- Leemos el número introducido por el usuario
li a7, READ_INT
ecall 
#-- Movemos el número a una variable temporal
mv t0, a0

#-- Leemos otro número introducido por el usuario
li a7, READ_INT
ecall 
#-- Movemos el número a una variable temporal
mv t1, a0

#-- Realizamos la suma
add t3, t0, t1
#-- Movemos el número a una variable temporal para poder imprimirlo después
mv a0, t3

#-- Imprimimos el valor de la suma
li a7, PRINT_INT
ecall


li a7, EXIT
ecall