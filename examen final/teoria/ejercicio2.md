Pregunta 2 (2.5 Puntos): Repertorio de instrucciones

Un computador tiene una arquitectura registro-memoria, con 16 registros de propósito general de 64 bits, denotados por x0 - x15. 
Las direcciones de memoria son de 64 bits y las variables almacenadas en memoria son palabras de 64 bits también. El fabricante nos proporciona 
el formato de las instrucciones store, add (suma) y sub (resta)
![](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/examen%20final/teoria/captura.png)



La operación de suma realiza la operación: Reg = Reg + dato, y la de resta: Reg = Reg - dato. El ensamblador acepta esta sintáxis para las instrucciones:

* `add reg, dir`
* `sub reg, dir`
* `store reg, dir`

En memoria están almacenadas tres variales, que denotaremos por w, y, z. Se quiere hacer la operación f = w + y - z , dejando el resultado en la variable de memoria f.
Supón que los registros del computador B están inicialmente a 0

a) Escribe un fragmento de programa en el ensamblador de este computador que realice esta operación (0.5)

b) Calcula el número de accesos totales a memoria que se realizan, indicando cuáles son de lectura y cuáles de escritura (0.5)

c) Calcula el tráfico total en bytes que se intercambian el procesador y la memoria principal (1)

d) Supón que las variables w,y,z y f están situadas consecutivamente en la memoria, a partir de la dirección 0x000000102A00E00, escribe el código máquina del programa del apartado a) (Escribe las instrucciones en hexadecimal) (0.5)
