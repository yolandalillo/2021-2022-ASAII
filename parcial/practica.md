**Pregunta 1**

L1. Al ejecutar este programa:
```
.text

addi x3, x0, 4
addi x4, x0, 0
add x4, x0, x3
addi x5, x4, 0xFFFFFFFF

li a7, 10
ecall
```

a.El registro x5 tiene el valor 3

b.El registo x5 tiene el valor 0x00

c.El programa no ensambla

d.El registro x4 tiene el valor 3

*La respuesta correcta es: El registro x5 tiene el valor 3*

**Pregunta 2**

L1. ¿Cuanta memoria ocupa este programa?
```
.text

addi x3, x0, 4
addi x4, x0, 0
add x4, x0, x3
addi x5, x4, 0xFFFFFFFF

li a7, 10
ecall
```

a.2 palabras de 64 bits y 1 de 32 bits

b.Nada, porque no ensambla

c.5 palabras de 32 bits

d.24 bytes

*La respuesta correcta es: 24 bytes*

**Pregunta 3**

L1. Simula este programa. ¿Cuál es la cuarta instrucción que se ejecuta?
```
.text

addi x3, x0, 2
a:
addi x3,x3,-1
bgt x3,x0, a

li a7, 10
ecall
```
a.bgt x3,x0, a

b.addi x3, x0, 2

c.li a7, 10

d.addi x3, x3, -1

*La respuesta correcta es: addi x3, x3, -1*

**Pregunta 4**

L2. ¿Cual es el valor de la etiqueta c?
```
.text
a:
addi x5, x0, 0
b:
addi x6, x0, 0
c:
addi x5, x5, 1
add x6, x6, x5
b c
```
a.0x00128293

b.0x00400000

c.0x00400008

d.0x10010000

*La respuesta correcta es: 0x00400008*

**Pregunta 5**

L2. Sabiendo que el PC tiene el valor 0x00400010. ¿Qué instrucción de este program es la siguiente que se va a ejecutar?
```
    .text
ini:
a:
    addi x5, x5, 3
    addi x6, x6, 5
    addi x7, x7, 7
b:
    addi x8, x8, 9

   sub x9, x7, x8
   add x6, x6, x6
   add x6, x6, x6
c:
   sub x9, x6, x9
   add x5, x5, x5
   add x5, x5, x9
d:
   addi x10, x5, 15

  li a7, 10
  fin: ecall
last:
```
a.ninguna. Es un valor incorrecto del PC

b.sub x9, x7, x8

c.addi x8, x8, 9

d.add x6, x6, x6

*La respuesta correcta es: sub x9, x7, x8*

**Pregunta 6**

L3. Indica cual de las siguiente afirmaciones es cierta
```
      .data
dato: .word 0xCACABACA

      .text
      la x5, dato
      li a7, 10
      ecall
``` 

a.Este programa tiene 3 instrucciones

b.Al ejecutarlo, se asigna el valor 0xCACABACA al registro x5

c.Este programa ocupa 15 bytes

d.Este programa tiene dos pseudo-instrucciones y una instrucción básica

*La respuesta correcta es: Este programa tiene dos pseudo-instrucciones y una instrucción básica*

**Pregunta 7**

L3. ¿Qué hace este programa?

```
   .data

a:
  .word 0
  .word 0

   .text
   la x5, a
   li x6, 0xFF
   sw x6, 4(x5)
```
a.Almacena el valor 0xFF en la dirección 0x10010004

b.Carga en el registro x6 lo que hay en x5 + 4

c.Tansfiere el valor del registro x9 al x6

d.La primera instrucción almacena el valor hexadecimal a en x5

*La respuesta correcta es:Almacena el valor 0xFF en la dirección 0x10010004*

**Pregunta 8**

L4:  ¿Qué hace el siguiente programa?

```
   .data
t: .word 0X6F, 0X7F, 0X07, 0X7D, 0X6D, 0X66, 0X4F
   .word 0X5B, 0X06, 0X3F
   .text
   la x5, t
   li x6, 0Xffff0010
   lw x10, 0(x5)
   sw x10, 0(x6)
   lw x10, 4(x5)
   sw x10, 0(x6)
   lw x10, 8(x5)
   sw x10, 0(x6)
   lw x10, 0xC(x5)
   sw x10, 0(x6)
   lw x10, 0x10(x5)
   sw x10, 0(x6)
   lw x10, 0x14(x5)
   sw x10, 0(x6)
   lw x10, 0x18(x5)
   sw x10, 0(x6)
   lw x10, 0x1c(x5)
   sw x10, 0(x6)
   lw x10, 0x20(x5)
   sw x10, 0(x6)
   lw x10, 0x24(x5)
   sw x10, 0(x6)
   li a7, 10
   ecall
```

a.Saca por el display de 7 segmentos derecho los dígitos del 9 al 0 y termina

b.Al terminar el programa el registro x10 vale 0x6F

c.Saca el dígito 0 por el display de 7 segmentos derecho y termina

d.No hace nada, porque no accede a ningún periférico de salida

*La respuesta correcta es: Saca por el display de 7 segmentos derecho los dígitos del 9 al 0 y termina*

**Pregunta 9**

Analiza el siguiente programa:
```
.text
   li a0, 65
   li a7, 34
   ecall
   li a7, 10
   ecall
```

a.Se solicita el servicio 65 del sistema operativo

b.Imprime el numero 65 en hexadecimal en la consola

c.Imprime en la consola el contenido de la dirección 65

d.Se hace una llamada al sistema, pero es incorrecta

*La respuesta correcta es: Imprime el numero 65 en hexadecimal en la consola*

**Pregunta 10**

L5. Este fragmento de código:
```
  sub t3, t0, t1
  addi t4, t2, 5
  add t6, t3, t4
```

a.Calcula la expresión t6 = (t0 - t1) + (t2 + 5)

b.Calcula la expresión t6 = (t0 - t1) + (t2 + 5)

c.Calcula la expresión t6 = t3 - t4 + t2 + 5 -t1 + t0

d.Se usan los registros de manera incorrecta

*Las respuestas correctas son: Calcula la expresión t6 = (t0 - t1) + (t2 + 5)*
