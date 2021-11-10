**Ejercicio 8**

En un NanoRisc-V monociclo se tienen los siguientes retardos para los componentes de la ruta de datos:

|Componente| 	Retardo|
|--|--|
|Memoria de instrucciones 	|400ps|
|Sumador 	|100ps|
|Memoria de datos| 	350ps|
|Banco de registros| 	200ps|

La ALU tiene diferentes retardos según la operación realizada:

|Operación ALU| 	Retardo|
|--|--|
|suma| 	120ps|
|Resta| 	150ps|
|AND |	80ps|
|OR |	70ps|

Se pide

a) ¿Cuál es la frecuencia máxima de funcionamiento del procesador?

**La frecuencia máxima se calcula siempre para el caso peor. La ALU tiene diferentes retardos según la operación realizada, así que tomamos la más lenta, que tiene un tiempo de 150ps. Por definición, el retaro de un circuito es siempre el retardo de su camino crítico (es decir, el retardo mayor), y siempre se toma ese para los cálculos. La instrucción más crítica es la de LOAD, que realiza dos accesos a memoria, por tanto será esta la que defina el caso peor:**

**Retardo de load: Fetch(400ps) + decod(200ps) + Ejecución (150ps) + Mem(350ps)= 1.1ns**

**Por tanto, el periodo mínimo deberá ser igual a Tmin = 1.1ns. La frecuencia máxima es de 1/1.1ns = 909.1Mhz**

b) ¿Qué mejora de rendimiento se obtiene si le pedimos al ingeniero hardware que reduzca el retardo de la operación de suma de 120ps a 80ps?

**No hay NINGUNA MEJORA del rendimiento, ya que no se mejora el caso peor, que sigue siendo de 150ps. Por tanto la frecuencia máxima de funcionamiento sigue siendo la misma que antes**
