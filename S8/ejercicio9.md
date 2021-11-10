Ejercicio 9

En un procesador NanoRisc-V monociclo se tienen los siguientes retardos en sus componentes de la ruta de datos

|Componente| 	Retardo|
|--|--|
|Memoria de instrucciones| 	400ps|
|Sumador| 	100ps|
|ALU |	150ps|
|Memoria de datos| 	450ps|
|Banco de registros| 	200ps|

Se pide

a) Calcular la frecuencia máxima de funcionamiento

**El caso peor es la intrucción de load que tiene el siguiente retraso: fetch(400ps) + decod(200ps) + exe(150ps) + Mem(450ps) = 1.2ns. La frecuencia máxima es de: 1/1.2ns = 833.3Mhz**

b) Si ahora tenemos en cuenta los retrasos introducidos por los multiplexores, que son de 5ps y de la escritura del contador de programa (PC) que tarda 20ps... ¿Cuál es la frecuencia máxima de funcionamiento ahora?

**Recalculamos los retardos para todas las etapas teniendo en cuanta los nuevos retardos:**

* **Fetch: Desde que llega el flanco de subida hasta que el valor del PC está disponible tranacurre un terardo de 20ps. A partir de ese momento ya se accede a memoria a leer la instrucción correcta. Retardo de Fetch: 400ps + 20ps**
* **Decod: Aquí no hay multiplexores: 200ps**
* **Exec: Multiplexor de acceso a la Alu más el retardo de la Alu: 5ps + 150ps**
* **Mem: 450ps**
* **Write: Hay un multiplexor: 5ps**
* **Retardo total: Fetch(400ps+ 20ps) + decod(200ps) + exe(5ps + 150ps) + mem(450ps) + WB(5ps) = 1230ps**
* **Frecuencia máxima: 813Mhz**
