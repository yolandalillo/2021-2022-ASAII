**EJERCICIO 4**

Analiza este circuito:

![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S06/images/ejercicio4.png)

a) Explica este circuito

**El circuito está formado por la conexión en anillo de un registro de 2 bits y un sumador de 2 bits. La parte combinacional es el sumador, que tiene un retardo de 1ns, y el registro es la parte secuencial, con un retardo de 4ns**

b) Calcula su frecuencia máxima de funcionamiento

**Aunque existan diferentes caminos siempre elegimos el crítico ya que, nos garantiza que en todos los casos el valor situado a la entrada del registro es estable, y por tanto se capturará correctamente al llegar el flanco de subida del reloj**

**En este circuito sólo hay un camino que tiene un retardo de 4ns + 1ns = 5ns en total. Al llegar un flanco de subida se captura el valor siguiente. Al cabo de 5ns este valor se ha guardado en el reg. La frecuencia máxima de funcionamiento será por tanto de 1 / 5ns = 0.2Ghz = 200Mhz**

c) Si inicialmente el registro tiene el valor 0, ¿Cuantos ciclos de reloj transcurren hasta que valga 3?

**Al llegar 3 ciclos de reloj, pasa a valer 11 (3)**

d) Si el registro tiene el valor 3 y llega un flanco de reloj, ¿Cual es el nuevo valor del registro?

**DUDA PREGUNTADA EN CLASE--> En el siguiente ciclo de reloj, el registro pasará a valor 0, ya que los números que estamos usando son de 2 bits**

e) ¿Cuanto tiempo transcurre desde que vale 0, llega el primer ciclo de reloj y vuelve otra vez a cero?

**Supondremos que el circuito funciona a su máxima frecuencia, es decir que el periodo del ciclo es el calculado en el aparado b que era de 5ns. También sabemos que tarda 4 ciclos de reloj de volver otra vez a 0. Por tanto tarda 4 * 5ns = 20ns**

