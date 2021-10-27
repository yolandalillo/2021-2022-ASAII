**Reto 1**

Esta es una instrucción en código máquina del NanoRISC-V: 0x0C000293. ¿Sabrías decodificarla y obtener la instrucción en ensamblador?

```
Cada dígito codifica 4 bits, tendremos un total de 32 bits (8*4)

  9     3
 1001 0011

Mi opcode es 0010011, miramos en la tabla y corresponde a la instrucción addi

Los siguientes 5 bits es el reguistro destino, por tanto seguimos decodificando

 2
0010

Por tanto, el registro es 00101, que corresponde a x5 porque cogemos el uno que nos quedaba de arriba sin coger

  0   0    0
0000 0000 0000 

Los tres siguientes son func3 que son ceros, los cinco siguientes son todos cero por tanto rs1 es x0

El calor es 0x0C0 = 0xC0

Finalmente la solución que nos pedía es: 

addi x5,x0,0xC0

```

**Reto 2** 

¿Y qué instrucción en ensamblador es esta otra 0x00128313?

**Reto 3**

¿Cuál es el código máquina de la instrucción ld x1, 0x100(x0)?
