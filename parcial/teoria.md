**Pregunta 1**

Indica cuál de las siguientes afirmaciones relativas al rendimiento es correcta:
```
a.El rendimiento nunca se puede mejorar usando técnicas de predicción

b.La segmentación es una técnica de diseño del procesador que nos permite aumentar su rendimiento

c.Hay un compromiso entre rendimiento y fiabilidad. Al aumentar el rendimiento disminuye la fiabilidad

d.Las abstracciones son necesarios, pero complican los diseños
```


*La respuesta correcta es: La segmentación es una técnica de diseño del procesador que nos permite aumentar su rendimiento*

**Pregunta 2**

Indica cuál de la siguientes afirmaciones relativas a lenguajes de alto nivel y compiladores es correcta
```

a.En el código máquina no se usan variables

b.El código en un lenguaje de alto nivel tiene más líneas que un programa en ensamblador

c.El código máquina lo obtiene el programa ensamblador a partir de un lenguaje de alto nivel, como C o python

d.El compilador traduce un código escrito en un lenguaje de alto nivel a lenguaje ensamblador, y el programa ensamblador genera el código máquina
```

*La respuesta correcta es: El compilador traduce un código escrito en un lenguaje de alto nivel a lenguaje ensamblador, y el programa ensamblador genera el código máquina*

**Pregunta 3**

Tenemos dos ordenadores, A y B, que ejecutan el mismo programa de prueba escrito en un lenguaje de alto nivel. El ordenador A tarda 4 segundos, mientras que el ordenador B lo hace en 6 segundos
```

a.No se pueden comparar sin saber los CPI

b.El ordenador A es 1.5 veces más rápido que el B

c.No se pueden comparar sin saber la frecuencia de cada procesador

d.No se pueden comparar sin saber qué compilador se ha usado
```

*La respuesta correcta es: El ordenador A es 1.5 veces más rápido que el B*

**Pregunta 4**

Rendimiento de un programa. Indica la respusta correcta
```

a.El algoritmo no influye en el rendimiento de un programa

b.El juego de instrucción de un procesador afecta al rendimiento del programa

c.El compilador no influye en el rendimiento de un programa

d.El lenguaje de programación no influye en el rendimiento del programa
```

*La respuesta correcta es: El juego de instrucción de un procesador afecta al rendimiento del programa*

**Pregunta 5**

Un computador tiene instrucciones de 15bits. Los 3 primeros bits se corresponden con el código de operación, y los 12 restantes con la dirección del dato a usar
```

a.En este computador no hay registros

b.En este computador no hay periféricos de entrada/salida

c.Este computador puede acceder como máximo a 2 elevado a 10 posiciones de memoria

d.Este computador puede tener como máximo 8 instrucciones
```

*La respuesta correcta es: Este computador puede tener como máximo 8 instrucciones*

**Pregunta 6**

El computador A tiene una arquitectura registro-registro, mientras que el computador B es de tipo memoria-registro. Indica qué afirmación es correcta:

```

a.El tráfico generado por los datos del computador A es mejor que el del computador B, en general

b.El computador B realiza en general menos accesos a memoria que el A

c.En el computador A no hay accesos a memoria

d.En el computador B la transferencia de los datos va desde la memoria a los registros
```


*La respuesta correcta es: El tráfico generado por los datos del computador A es mejor que el del computador B, en general*

**Pregunta 7**

En el procesador A de 32 bits se almacena la palabra 0x3AFEBACA a partir de la posición de memoria 0x2301. Este procesador permite el acceso a direcciones de memoria no alineadas
```

a.Si el procesador tiene ordenación "little-endian" se almacena el byte 0xCA en la dirección 0x2301

b.Como es una dirección no alienada, sólo se realiza un único acceso

c.Si el procesador tiene ordenación "Big-endian" se almacena el byte 0xCA en la posición 0x2302

d.Se produce un error de alineamiento
```

*La respuesta correcta es:Si el procesador tiene ordenación "little-endian" se almacena el byte 0xCA en la dirección 0x2301*

**Pregunta 8**

Indica cuál es la respuesta correcta:
```

a.Los procesadores RISC-V no tienen el modo de direccionamiento indirecto con desplazamiento

b.En el modo de direccionamiento directo se utiliza un registro para acceder directamente al operando

c.Si una instrucción usa el modo de direccionamiento inmediato significa que alguno de sus operandos está en la propia instrucción

d.En el modo de direccionamiento a registro el operando está en la dirección de memoria indicada por un registro
```

*La respuesta correcta es:Si una instrucción usa el modo de direccionamiento inmediato significa que alguno de sus operandos está en la propia instrucción*

**Pregunta 9**

Un circuito digital, con parte secuencial y combinacional tiene una frecuencia máxima de funcionamiento de 100Mhz:
```

a.El retardo secuencial es de 0

b.No lo podremos hacer funcionar a la frecuencia de 10Mhz, ya que los datos se corromperían

c.El retardo combinacional será de 10ms

d.Para calcular esta frecuencia se necesita conocer el retardo de su parte combinacional y secuencial
```

*La respuesta correcta es: Para calcular esta frecuencia se necesita conocer el retardo de su parte combinacional y secuencial*

**Pregunta 10**

Queremos calcular la frecuencia máxima de funcionamiento del NanoRisc-v. ¿Cual de estas instrucciones es la crítica?
```

a.sd s1, 0x100(x2)

b.beq x5,x6,4

c.add x5,x6,x6

d.ld x1, 0x100(x2)
```

*La respuesta correcta es: ld x1, 0x100(x2)*
