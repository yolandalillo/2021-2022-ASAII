**Ejercicio 1**

En la memoria de instrucciones de un NanoRisc-v monociclo se tiene el siguiente contenido:

| Direccion |  Instrucción |
| -- | -- | 
| 0x100 | 	| addi x5, x0, 20 |
|0x104 	add x5, x5, x6|
0x108 	beq x5, x7, 4
0x10C 	beq x0, x0, 0|
.... 	...

Tras la ejecución de una instrucción, el estado del procesador es:

    PC = 0x104
    x5 = 20
    x6 = 1
    Resto de registros a 0

Se pide:

 a) Calcula el estado del procesador al llegar el siguiente franco de subida del reloj
 
 b) Calcula el estado del procesador al llegar otro flanco de subida de reloj tras el del apartado a
 
 c) Calcula el estado del procesador al llegar otro flanco de subida de reloj tras el del apartado b
