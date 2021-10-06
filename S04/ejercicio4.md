Ejercicio 4

Un computador A tiene una arquitectura registro-registro, con 16 registros de propósito general de 32 bits. 
Las direcciones de memoria son de 32 bits y las variables almacenadas en memoria son palabras de 32 bits también. 
El fabricante nos proporciona el formato de las instrucciones load/store así como las de suma (add) y resta (sub). 
La instrucción de suma realiza esta operación: Rd = Rs1 + Rs2 y la de resta: Rd = Rs1 - Rs2

![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S04/images/ejercicio4.PNG)

En memoria están almacenadas las variables a, b, c y d. Se quiere hacer la operación f = (a + b) - c + d, 
dejando el resultado en la variable de memoria f

a) Escribe el programa en ensamblador del computador A que realiza esta operación

*#-- f = (a + b) - c + d

#-- Variable de memoria a registros
load x1, a
load x2, b
load x3, c
load x4,d

# -- Realizar las operaciones 
add x5, x1, x2  #-- x5 = (a + b)
sub x5, x5, x3  #-- x5 = (a + b) - c
add x5, x5, x4  #-- x5 = (a + b) - c + d

# -- Almacenar el resultado en f
store x5, f*

b) Calcula el tráfico total (en bytes) entre el procesador y la memoria cuando se ejecuta este programa

*Según la imagen LOAD y STORE ocupan 40 bits, es decir, 5 bytes
las instrucciones ADD y SUB ocupan 16 bits, es decir, 2 bytes. LOAD y STORE generan datos*

*Instruccion	  Trafico Instruciones (bytes)	Trafico datos (Bytes)	Total (bytes)
load x1,a             5 bytes                     4 bytes             9 bytes
load x2,b             5 bytes                     4 bytes             9 bytes          
load x3,c             5 bytes                     4 bytes             9 bytes          
load x4,d             5 bytes                     4 bytes             9 bytes          
add x5,x1,x2          2 bytes                     0 bytes             2 bytes
sub x5,x5,x3          2 bytes                     0 bytes             2 bytes
add x5,x5,x4          2 bytes                     0 bytes             2 bytes
store x5,f            5 bytes                     4 bytes             9 bytes
Total                 31 bytes                    20 bytes            51 bytes*
