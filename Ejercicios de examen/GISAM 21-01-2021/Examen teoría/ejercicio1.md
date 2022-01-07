Pregunta 1 (2.5 puntos): Rendimiento

Se tienen dos implementaciones, 1 y 2, del mismo juego de instrucciones. El repertorio tiene cuatro clases de instrucciones: de tipo A, de tipo B, 
de tipo C y de tipo D. La frecuencia de reloj y el CPI de cada implementación se muestran en la siguiente tabla:

|  | Fr | 	CPI A	| CPI B	| CPI C	| CPI D |
| ------------- | ------------- | 	-------------| -------------	| -------------| ------------- |
|1|	4 GHz|	1	|1	|3|	3|
|2|	2 GHz|	1|	2|2|	2|

Para comparar ambas arquitecturas se utiliza un programa de pruebas en un lenguaje de alto nivel, que al compilarlo genera un total de 500 instrucciones, 
repartidas de la siguiente forma:

10% clase A

30% clase B

40% clase C

20% clase D


Responde a las siguientes preguntas:

a) Calcula el número de ciclos de reloj total que tarda cada arquitectura en ejecutar el programa de pruebas (0.5)

**Para calcular el número de ciclos que tarda cada arquitectura tendremos que sumar el número de ciclos que tarda cada una de las instrucciones que se ejecutan. 
En cada arquitectura las instrucciones tardan un número distinto de ciclos. Esto lo hacemos multiplicando el Número de instrucciones de cada tipo por su CPI y 
los sumamos. I es el número total de instrucciones del programa de prueba: 500**

* **Arquitectura 1: (I * 0.1 * 1) + (I * 0.3 * 1) + (I * 0.4 * 3) + (I * 0.2 * 3) = 1100 ciclos**

**COMENTARIOS: Cada término entre paréntesis se corresponde con el número de instrucciones de cada tipo. El primero son los ciclos que tardan las instrucciones de tipo A,
el segundo las de tipo B, luego las de tipo C y finalmente las de tipo D. El número de instruccion de un tipo se obtiene multiplicando I por su porcentaje**

* **Arquitectura 2: (I * 0.1 * 1) + (I * 0.3 * 2) + (I * 0.4 * 2) + (I * 0.2 * 2) = 950 ciclos**

b) Calcula el CPI de cada arquitectura (0.5)

**El CPI lo calculamos dividiendo el número de ciclos totales empleados en la ejecución del programa de prueba, dividido entre el número total de instrucciones que tiene**

* **Arquitectura 1: CPI1 = ciclos1 / I = 1100 / 500 = 2.2**
* **Arquitectura 2: CPI2 = ciclos2 / I = 950 / 500 = 1.9**

**Una vez más, la arquitectura 1 parace más lenta, ya que sus instrucciones, en media, requieren de más ciclos de reloj que en la arquitectura 2. 
Los valores obtenidos, ademas, son coherentes. Si hubiésemos obtenido un valor menor que uno, sería incorrecto. 
No puede ocurrir, así que tendríamos que revisar los cálculos. Si nos saliese 1 lo mismo. El CPI sólo puede ser 1 si todas y cada una de sus instrucciones 
se ejecuta en un ciclo de reloj.**

c) Calcula el tiempo de CPU total que tarda cada carquitectura en ejecutar el programa de pruebas (0.5)

**Lo que nos están pidiendo es: "¿Cuanto tiempo tarda cada computador en ejecutar el programa de pruebas?". Y este es el criterio DEFINITIVO para saber cuál de los 
dos es mejor: el que tarde menos tiempo. Al final, el tiempo es lo más imporatante: si un computador ejecuta el mismo programa en menos tiempo, será mejor**

**El tiempo de CPU se calcula multiplicando el número de ciclos totales por el periodo de cada ciclo, que es la inversa de la frecuencia**

* **Arquitectura 1: Tcpu1 = Ciclos1 * T1 = 1100 * 1 / Frec = 1100 * 1 / 4GHz = 1100 / 4 ns = 275 ns**

* **Arquitectura 2: tcpu2 = ciclos2 * T2 = 950 * 1 / Frec = 950 * 1 / 2GHz = 950 / 2 = 475 ns**

**El computador 1 es mejor que el computador 2, porque tarde menos tiempo en ejecutar el mismo programa.**

d) A partir de los datos obtenidos en los apartados anteriores, indica qué arquitectura es la más rápida, y cuánto más rápida es una sobre la otra (0.5)

**Para comparar arquitecturas usamos el rendimiento relativo:**

**n = Rend1 / Rend2 = Tcpu2 / Tcpu1 = 475 / 275 = 1.73**

**La arquitectura 1 es 1.73 veces más rápida que la 2**

e) Si el mismo programa de prueba se implementa en otro lenguaje de alto nivel diferente del original, y se usa un compilador también distinto, justifica si
los tiempos de CPU serían exactamente los mismos o habría cambios (0.5)

**Tanto el lenguaje empleado como el compilador determinarán qué tipo de instrucciones se usan y cuántas hay en el programa de prueba. Al utilizar otro lenguaje y otro 
compilador, el número de instrucciones usado de cada tipo variará y por tanto los tiempos de cpu también variarán (Por ejemplo, el compilador podría generar más 
instrucciones de tipo D que tipo A)**

*COMENTARIOS: Es precisamente por esto, que al evaluar el rendimiento de un computador, no sólo es importante la frecuencia a la que funcione, sino que 
hay más factores a tener en cuenta: el lenguaje empleado, el compilador, el programa de prueba... Esto es importante para que, como ingenieros, 
seamos nosotros los que tomemos la decisión correcta y sepamos analizar con criterio los datos proporcionados por un fabricante. 
El fabricante te dará siempre los mejores datos. Seleccionará los programas de pruebas y compiladores en los que su procesador salga ganando frente a la competencia. 
Pero, podría ser que al cambiar el compilador, por ejemplo, el rendimiento empeorase*
