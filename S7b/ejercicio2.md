**EJERCICIO 2**

Hemos construido un computador nanoRISC-v que sólo tiene memoria de instrucciones:

![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S7b/images/ejercicio2.png)

Los accesos a memoria para la lectura de las instrucciones tardan 10ns. El tiempo que tarda en ejecutarse una instrucción depende del tipo de instrucción. Las instrucciones de tipo R tardan 50ns, las de tipo I 60ns y las de salto condicional 70ns. Las instrucciones se ejecutan en un único ciclo de reloj

a) Calcular la frecuencia máxima a la que puede funcionar este computador para que se ejecuten correctamente las instrucciones de tipo R, I y los saltos condicionales (el resto de instrucciones se ignoran en este ejemplo)

**El nanoRisc-v está conectado en anillo con la memoria de código. La frecuencia máxima de funcionamiento vendrá dada por el camino con retardo máximo. La lectura de cualquier instrucción tarda 10ns, sin embargo su ejecución depende del tipo que sea. Nos quedamos con el caso que más tarda 70ns. Por tanto, el camino crítico tendrá un retardo de 10ns + 70ns = 80ns. Y la frecuencia máxima será de: 1 / 80ns = 12.5Mhz**

b) Si estamos usando la frecuencia máxima calculada anteriormente, ¿Cuanto tiempo tarda el procesador en ejecutar estas 6 instrucciones?

![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S7b/images/ejercicio2.1.png)

**Dado que se trata de un procesador monociclo, se ejecuta una instrucción en cada ciclo de reloj. Como en total hay 6 instrucciones y cada ciclo tarda 80ns, el tiempo total será de 6 * 80ns = 480ns**
