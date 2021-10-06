Ejercicio 5

Un computador B tiene una arquitectura registro-memoria, con 16 registros de propósito general de 32 bits.
Las direcciones de memoria son de 32 bits y las variables almacenadas en memoria son palabras de 32 bits también.
El fabricante nos proporciona el formato de las instrucciones store así como las de suma (add) y resta (sub).
La operación de suma realiza esta operación: Reg = Reg + dato, y la de resta: Reg = Reg - dato

![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S04/images/ejercicio5.PNG)

En memoria están almacenadas las variables a, b, c y d. Se quiere hacer la operación f = (a + b) - c + d, 
dejando el resultado en la variable de memoria f (Misma operación que en el ejercicio anterior). 
Suponed que los registros del computador B están inicialmente a 0

a) Escribe el programa en ensamblador del computador B que realiza esta operación

#-- Realizar las operaciones

add x1, a  #-- x1 = 0 + a

add x1, b  #-- x1 = (a + b)

sub x1, c  #-- x1 = (a + b) - c

add x1, d  #-- x1 = (a + b) - c + d

#-- Almacenar el resultado en memoria

store x1, f

b) Calcula el tráfico total (en bytes) entre el procesador y la memoria cuando se ejecuta este programa

*Todas las instrucciones ocupan 5 bytes (40 bits), y todas realizan acceso a memoria, por lo que su tráfico de datos es de 4 bytes.
El tráfico total de las instrucciones es de 5 * 5 = 25 bytes. El trafíco debido a los datos es de 5 * 4 = 20 bytes. 
El tráfico total es de 25 + 25 = 45 bytes*
