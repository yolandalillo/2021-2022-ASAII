1. Dentro de un programa principal se tiene el siguiente fragmento de código
```
#....

li s0, 30
li t0, 5
jal tarea1

mv a0, s0
mv a1, t0

#....
```
¿Cuanto valor a0?

**Tras ejecutarse este fragmento de código el valor de a0 es 30.
¿Por quué? Primero se asigna el valor 30 al registro s0. Este registro es un registro estático. Y por tanto, preserva su valor entre llamadas. 
Es decir, que tras realizar la llamada a tarea1 el registro s0 seguirá valiendo 30. Esto me lo garantiza la ABI del RISCV (El valor de s0 SIEMPRE se preserva)
Por tanto, al retornar de tarea1, s0 vale 30. Y luego en el programa principal asignamos s0 al registro a0, por lo que a0 valdrá 30**

¿Cuanto vale a1?

**La respuesta es: ESTE CÓDIGO NO ES VÁLIDO PORQUE SE ESTÁ VIOLANDO LA ABI DEL RISCV (El convenio de uso de registros). El registro t0 NO preserva su valor entre llamadas. 
Esto quiere decir que tras invocar a la función tarea1, su valor es INDEFINIDO (puede tener cualquier valor, según cómo esté implementada la tarea 1). 
Pero al margen del valor que tenga, tras una llamada a subrutina NO PODEMOS leer ningún registro que no preserve su valor. Los podemos usar, pero primero hay que inicializarlos a un valor conocido**

2. Este fragmento de programa principal llama a la función print_int(num), que imprime en la connsola el número entero pasado como parámetro y no retorna ningún valor. 
¿Es correcto? ¿Qué numeros se imprimen en la consola?

```
#....

li a0, 5
jal print_int

jal print_int 

#.....
```

**ESTE PROGRAMA ES INVÁLIDO porque VIOLA el convenio del uso de registros del RISCV en la segunda llamada a print_int. La primera llamada se hace correctamente. 
Se pasa el valor 5 como primer argumento y se llama a la función print_int. Por tanto, se imprimirá el "5" en la consola. Hasta aquí todo ok.**

**Sin embargo, el registro a0 NO PRESERVA SU VALOR entre llamadas. Al realizar la primera llamada a0 vale 5, pero la función no retorna ningún valor (que según el convenio ser haría por a0) por lo que el valor real de a0 puede ser cualquiera (depende de cómo esté implementada la función print_int). Es decir, su valor es INDEFINIDO. Y por tanto, estamos invocando (la segunda vez) a una función en la que le pasamos un parámetro INDEFINIDO. 
Es un código inválido porque es obligatorio que a0 tenga un valor conocido antes de llamar a print_int**

3. Este es un fragmento de código de un programa principal. ¿Cual es el valor del registro t0 al ejecutarse?
```
li t0, 5
li s0, 25
jal tarea1

addi s1, s0, 1

jal tarea2

addi s2, s1, 1
mv t0, s0
```
**t0 = 25**

**Vemos que el registro s0 se inicializa al principio al valor 25. Al ser un registro estático, se preserva su valor entre llamadas. Y además no hay ninguna otra instrucción 
este fragmento de código que lo modifique. Por lo que en la última línea se asigna s0 al registro t0. Así, t0 contiene 25**

4. La función tarea1() no tiene ningún parámetro de entrada, ni retorna ningún valor. Este es un fragmento de código de su implementacion
```
# -- Punto de entrada
tarea1: 
   mv t1, s0

#.....aquí habría más código...
```

¿Se está violando el convenio de uso de registros?

**Se está VIOLADO el convenio de uso de registros porque la función tarea1 está leyendo un valor del exterior a través del registro s0. Sin embargo, es una función que NO 
recibe ningún ningún parámetro de entrada. Por el convenio de uso de los registros, para pasar argumentos a una función hay que hacerlo exclusivamente a través de los 
registros a0-a7. NO podemos pasar información a través de s0**

5. La función inc(x) recibe un valor entero y lo devuelve incrementado en una unidad. Este es un fragmento de su implementación. ¿Es correcto?
```
#-- Punto de entrada
inc: 

     #-- Leer el primer argumento
     mv s0, a0

     #-- Incrementar su valor en una unidad
     addi s0, s0, 1

     #-- Devolver el valor incrementado por a0
     mv a0, s0
     ret
```

**En esta función se ESTÁ VIOLANDO el convenio de uso de los registros. El registro s0 debe preservar su valor: El valor que tenga en el punto de entrada 
debe ser igual al valor que tenga en el punto de salida. Y esto no es así. Al almacenar a0 en s0, estamos modificando el valor de s0**

6.Este es el un fragmento de la función par() que comprueba si el número de caracteres de una cadena es par. Si lo es, llama a la función mensaje_par() que imprime en la consola un mensaje indicando que es par. Luego devuelve por a0 el código 1. ¿Es correcto?
```
#-- Punto de entrada
par:  

    #.... resto de instrucciones

    #.... es par
    li t0, 1

    #-- Imprimir mensaje
    jal mensaje_par

    #-- devolver codigo de retorno (que está en t0)
    mv a0, t0
    ret
  ```
  
  **Se está VIOLANDO el convenio de uso de registros. Tras llamarse a la función mensaje_par() el valor del registro t0 es INDEFINIDO. No podemos leer t0 para asignarlo a a0. Antes hay que inicializarlo a un valor conocido.**
