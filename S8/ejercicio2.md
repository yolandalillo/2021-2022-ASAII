**Ejercicio 2**

En un procesador NanoRisc-V monociclo se ha completado la ejecución de una instrucción y se va a proceder a ejecutar la siguiente: addi x5, x0, 20. La unidad de control genera las µ-órdenes a partir de estas tablas:

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
Memoria de instrucciones 	400ps
Sumador 	100ps
ALU 	120ps
Memoria de datos 	350ps
Banco de registros 	200ps

Se pide

a) Calcular el retardo de cada una de las fases: Fetch, decodificación, ejecución, lectura de memoria y escritura de resultados (write-back)

b) Calcular el retardo total de la instrucción

