**Ejercicio 4**

Repetir el ejercicio 2, con los mismos datos, pero para las instrucciones:

a) ld x1, 0x100(x2)

**Retardo Fetch: 400ps, este retardo está dado SIEMPRE por el retardo de la memoria, y será el mismo para TODAS las instrucciones**

**Retardo de decodificación: 200ps**

**Retardo de ejecución: Los operandos usados son rd = 1, rs1 = 2, imm = 0x100. La ejecución es similar a la instrucción addi (ambas son instrucciones de tipo I). El retaro de ejecución es el de la Alu: 120ps**

**Retardo de acceso a memoria: La instrucción de load accede a la memoria de datos. El retardo de esta fase es igual al tiempo que tarda la memoria de datos en leer un dato: 350ps**

**Retardo de escritura: En el registro destino se escribe el dato leído de memoria. La señal MemToReg está a 1 por lo que llega a la entrada data del banco de registros es el valor leído de la memoria. La escritura se realiza cuando llega el flanco de subida. Los datos son estables en cuando se reciben de la memoria de datos, por lo que el tiempo de esta fase es también 0**

**Retardo de la instrucción: 400ps + 200ps + 120ps + 350ps = 1070ps**

b) ld x3, 0(x0)

**Al tratarse de una instrucción load, su rettraso es el mismo que la anterior. Los datos circulan por los mismos componentes, por lo que sus retardos será igual. Retardo de la instrucción: 1070**

**Retardo Fetch: 400ps, este retardo está dado SIEMPRE por el retardo de la memoria, y será el mismo para TODAS las instrucciones**

**Retardo de decodificación: 200ps**

**Retardo de ejecución: La ejecución es similar a la instrucción addi (ambas son instrucciones de tipo I). El retaro de ejecución es el de la Alu: 120ps**

**Retardo de acceso a memoria: La instrucción de load accede a la memoria de datos. El retardo de esta fase es igual al tiempo que tarda la memoria de datos en leer un dato: 350ps**

**Retardo de escritura: En el registro destino se escribe el dato leído de memoria. La señal MemToReg está a 1 por lo que llega a la entrada data del banco de registros es el valor leído de la memoria. La escritura se realiza cuando llega el flanco de subida. Los datos son estables en cuando se reciben de la memoria de datos, por lo que el tiempo de esta fase es también 0**

**Retardo de la instrucción: 400ps + 200ps + 120ps + 350ps = 1070ps**

**SOLO SE DIFERENCIA EN REGISTROS Y OPERANDOS QUE ESO NOS DA IGUAL**
