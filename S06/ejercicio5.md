**EJERCICIO 5**

Analiza el siguiente circuito:

![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S06/images/ejercicio5)

a) Explica este circuito

**Este circuito tiene un registro de 8 bits con entrada de write, es decir, que sólo se actualizará cuando la señal cnt valga 1 y llegue un flanco de subida de reloj. Tiene una parte secuencial, conectada en anillo, que es un sumador de 8 bits. El estado siguiente que calcula este sumador siempre será el valor del registro más 1. El retardo del registro es de 3ns y el del sumador de 1ns**

b) Calcula su frecuencia máxima de funcionamiento

**La frecuencia máxima viene dada por el tiempo que se tarda en tener un valor estable en la entrada del registro para que se garantice que se captura con total seguridad. Eso lo garantizamos haciendo que el periodo del reloj sea al menos el valor del camino crítico, que en este caso es la suma de los dos retardos: 3ns + 1ns = 4ns. La frecuencia máxima será de 1 / 4ns = 0.25Ghz = 250Mhz**

c) Inicialmente el registro contiene el valor 0 y la señal cnt está a 0. Durante el tercer ciclo de reloj la señal cnt se pone 1, y se vuelve a poner a 0 en el cuarto ciclo, permaneciendo así indefinidamente. ¿Cuál será el valor del registro en el sexto ciclo de reloj?

**PREGUNTADO --> En los ciclos 1, 2 y 3 como cnt está a 0, el contador permanece a 0. Durante la mitad del tercer ciclo cnt se pone a 1, por lo que al llegar el flanco de subida del cuarto ciclo el contador se incrementa en 1 unidad, pasando de 0 a 1. Como en el ciclo 4 la señal cnt se pone a 0, el contador permanecerá a 1 el resto de ciclos**

d) Si la señal cnt está a 0 durante 3 ciclos de reloj, en el siguiente se pone 1, en los siguientes 3 a 0, luego otra vez a 1 y así sucesivamente... ¿A qué frecuencia funciona este contador?

**El periodo total de repetición es de 4 ciclos de reloj. El periodo del reloj es el calculado en el apartado b: 4ns. Como el periodo es de 4 ciclos, el tiempo entre actualizaciones del contador es de 4 * 4ns = 16ns. El contador se incrementa en una unidad cada 16ns, es decir, que funciona a una frecuencia de 1 / 16ns = 62.5Mhz**
