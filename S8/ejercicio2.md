**Ejercicio 2**

En un procesador NanoRisc-V monociclo se ha completado la ejecución de una instrucción y se va a proceder a ejecutar la siguiente:`addi x5, x0, 20`. La unidad de control genera las µ-órdenes a partir de estas tablas:

|Opcode |	Inst| 	AluSrc| 	MemtoReg| 	Branch| 	RegWrite| 	MemWrite| 	AluOp|
|--|--|--|--|--|--|--|--|
|0x03| 	ld| 	1| 	1| 	0| 	1| 	0| 	00|
|0x13| 	addi| 	1| 	0| 	0| 	1|	0| 	00|
|0x23| 	sd| 	1| 	0| 	0| 	0| 	1| 	00|
|0x63| 	beq| 	0| 	0| 	1| 	0| 	0| 	01|
|0x33| 	Tipo R| 	0| 	0| 	0| 	1| 	0| 	10|


|AluOp| 	Funct7| 	Funct3| 	Operación| 	Código Alu|
|--|--|--|--|--|
|00| 	xxxxxxx| 	xxx| 	suma| 	0010|
|01| 	xxxxxxx| 	xxx| 	resta| 	0110|
|10| 	0000000| 	000| 	suma| 	0010|
|10| 	0100000| 	000| 	resta| 	0110|
|10| 	0000000| 	111|	and |	0000|
|10| 	0000000| 	110| 	or |	0001|

Los retardos introducidos por los componentes de la ruta de datos del procesador son:

|Componente| 	Retardo|
|--|--|
|Memoria de instrucciones |	400ps|
|Sumador 	|100ps|
|ALU |	120ps|
|Memoria de datos |	350ps|
|Banco de registros |	200ps|

Se pide

a) Calcular el retardo de cada una de las fases: Fetch, decodificación, ejecución, lectura de memoria y escritura de resultados (write-back)

**Fetch: Es la fase de captura de la instrucción, el ciclo en el que obtenemos la instrucción. Desde que arrancamos ciclo hasta que obtenemos instrucción. La dirección sale del registro PC y llega a la memoria de instrucciones, que tiene un retardo de 400ps. Al cabo de ese tiempo ya está la instrucción lista. Retardo de fetch: 400ps**

**Decodificación: En esta fase se obtienen los valores de los registros operandos usados. La intrucción que llega de la memoria por el pin inst se descompone en sus diferentes campos. Desde que tenemos la instrucción a valores estables en las tres entradas de la ALU. Como el retardo del componente de formato NO lo tenemos, supondremos que es despreciable y asumiremos un valor de 0. La instrucción tiene estos tres operandos:
  * (explicar esto mejor) Unidad de control: Sale lo que dice la tabla de la unidad de control, estamos usando la instrucción addi nos pondrá 100100
     *  AluSrc: 1 
     * MemtoReg: 0
     * Brach: 0
     * RegWrite: 1
     * MemWrite: 0
     * ALU: 0

**Analizando el caso peor, el tiempo decodificación es 200ps**

**Estos valores llegan al banco de registros, cuya lectura es combinacional y tiene un retardo dado de 200ps. Por tanto, el retardo en la decodificación es de 200ps. Como se trata de la instrucción addi, el valor de la señal de control AluSrc es 1**

**Ejecución: Es la fase que se lleva a cabo en la ALU. Le llega el operando x0 y el valor inmediato 20. La operación a realizar es la suma. Por tanto, al cabo de 120ps se tiene el resultado. Retardo de la fase de ejecución: 120ps. Como no nos dan los retardos de los multiplexores, asumiremos que son despreciables y les damos un valor de 0

**Lectura de memoria: La instrucción addi NO accede a memoria por lo que el retardo de esta fase es 0, desde que ponemos valor a la memoria de datos hasta que obtenemos el dato, la única que lee de memoria es LOAD.

**Escritura de estado: El resultado de la ALU llega a la entrada data del banco de registros. La señal RegWrite es 1 (se obtiene de la tabla de control). Esta fase se realiza cuando llega un flanco de reloj, por lo que forma parte del siguiente ciclo (la escritura se hace en paralelo con la lectura de la siguiente instrucción). El retardo de esta fase es 0 (0ps después de terminar el ciclo de ejecución los datos ya están estables y listos para su escritura. No hay que hacer cálculos adicionales)

b) Calcular el retardo total de la instrucción

**Retardo instrucción addi: Retardo Fech + Retardo Decodificación + Retardo Ejecución + Retardo write = 400ps + 200ps + 120ps = 720ps

**Esto significa que, trasncurridos 720ps desde la llegada del último flanco de subida, los valores que se tienen dentro del procesador son estables. Y por tanto se pueden capturar con seguridad.**

