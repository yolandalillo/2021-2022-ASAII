**Actividades para practicar**

**Actividad 1** 

Escribe un programa para el NanoRisc-v que implemente la operación de alto nivel f = a + 1. El valor inicial que tiene a es de 170. Recuerda que NO hay sistema operativo, por lo que no uses la instrucción ecall. Así que, de momento, no uses nada para terminar

```
li t0,170   #-- Esta instrucción no la tenemos pero es una pseudoinstrucción estándar de risc, por tanto, si la puedo utilizar
addi t1,t0,1
```

**Actividad 2**

Escribe un programa para el NanoRISC-V que lea una variable (de 64 bits) de la posición de memoria 0x100 y la guarde en el registro x1. Como estamos a bajo nivel y las direcciones las queremos controlar nosotros, NO uses etiquetas, sino direcciones directamente

```
li x2, 0x100  #-- En x2 metemos la dirección a la que queremos acceder
ld x1,0(x2)   #-- Cargamos en x1

#-- Otra solución también válida ahorrando instrucciones
ld x1, 0x100(x0)
```

**Actividad 3** 

Escribe un programa para el NanoRISC-V que almacene el valor 0xCAFE en la posición de memoria 0x108. No utilices etiquetas, sino direcciones directamente

```
li t0,0xCAFE
sd t0,0x108(t0)
```
