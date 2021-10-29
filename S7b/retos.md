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

El valor es 0x0C0 = 0xC0

Finalmente la solución que nos pedía es: 

addi x5,x0,0xC0

```

**Reto 2** 

¿Y qué instrucción en ensamblador es esta otra 0x00128313?

```
Pasamos todo a binario

0000 0000 0001 0010 1000 0011 0001 0011

Reagrupamos los bits fijándote en los 7 de menor peso (los 7 de la derecha) para sabe el opcode


0000 0000 0001 0010 1000 0011 0 0010011

Sabemos que es una instrucción addi.

000000000001 (12-bits: Campo Valor) - 00101 (5 bits. Campo rs1) - 000 (3. bits. Campo func3) 00110 (5 bits. Campo rd) 0010011 - (7 bits. Campo opcode)

La instrucción la reagrupamos así:

000000000001  00101  000  00110  0010011

y de aquí sacamos que: Valor = 000000000001 (1 en decimal),  rs1 = 00101 (5 en decimal),  func3 = 000,  rd=00110 (6 en decimal) y opcode = 0010011 (ya lo conocíamos de antes)

Valor = 1, rs1 = x5, rd = x6, opcode=addi

Ahora lo ponemos en ensamblador:  addi x6, x5, 1

NOTA: Si el campo func3 no hubiese sido 000, entonces NO es la instrucción addi,sería otra. Sabemos que es una addi porque el opcode es 0010011 y el campo func3 es 000

```

**Reto 3**

¿Cuál es el código máquina de la instrucción ld x1, 0x100(x0)?

```
ld -> 0000011
x1 -> 00001
func3 -> x0 -> 0000 0000 0000
valor -> 0X100

Por tanto será: 0x10000083

```
