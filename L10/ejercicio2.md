Ejercicio 2
En los siguientes fragmentos de código se está violando alguno de los convenios. Escribir el código necesario para solucionarlo, de forma que se cumplan las 
normas de la ABI RISCV

1. Fragmento de código dentro de un programa principal

```
#....

li s0, 30
li t0, 5
jal tarea1

mv a0, s0
mv a1, t0

#....
```
**El problema está con el registro t0, que NO preserva su valor al realizar la llamada a tarea1. Como estamos en el programa principal, la solución más sencilla 
es utilizar un registro que SÍ preserve su valor, como por ejemplo el s1. Así, si sustituimos t0 por s1, ya no se viola el convenio**

```
#....

li s0, 30
li s1, 5
jal tarea1

mv a0, s0
mv a1, s1

#....
```

2. Este fragmento de programa principal. La función print_int(num) tiene un parámetro de entrada y ninguno de salida
```
#....

li a0, 5
jal print_int

jal print_int 
#.....
```
**El registro a0 hay que usarlo como argumento en ambas llamadas a print_int. Una solución es guardar a0 en s0, que preserva su valor, y luego volver a 
asignárselo a a0 antes de llamar a print_int() la segunda vez. Podemos asignar cualquier valor a s0 ya que estamos en el programa principal**
```
#....

li a0, 5
mv s0, a0
jal print_int

mv a0,s0
jal print_int 
#.....
```


3.Fragmento de la función inc(x) recibe un valor entero y lo devuelve incrementado en una unidad
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
**La solución más sencilla es NO usar el registro s0, para no violar el convenio. Podemos usar directamente el registro a0 para incrementarlo y devolver su valor**
```
#-- Punto de entrada
inc: 

     #-- Incrementar su valor en una unidad
     addi a0, a0, 1

     ret
```

**Si por alguna razón necesitásemos utilizar el registro s0, el código anterior sería válido, pero antes hay que guardar s0 en la pila, y luego recuperarlo al final:**
```
#-- Punto de entrada
inc: 

     #-- Reservar espacio para la pila
     addi sp, sp, -16

     #-- Almacenar s0 en la pila
     sw s0, 0(sp)

     #-- Leer el primer argumento
     mv s0, a0

     #-- Incrementar su valor en una unidad
     addi s0, s0, 1

     #-- Devolver el valor incrementado por a0
     mv a0, s0

     #-- Recuperar s0 de la pila
     lw s0, 0(sp)
     
     #-- Liberar espacio de la pila
     addi sp, sp, 16
     ret
```

4. Fragmento de la función par() que comprueba si el número de caracteres de una cadena es par. Si lo es, llama a la función mensaje_par() que imprime en la 
consola un mensaje indicando que es par. Luego devuelve por a0 el código 1

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

**Para preservar el valor de t0 al realizar la llamada a mensaje_par() hay que guardarlo en la pila, y luego recuperar. Así que en el comienzo de la subrutina 
reservamos espacio para la pila y al final lo recuperamos**
```
#-- Punto de entrada
par:  

    #-- Reservar espacio en la pila
    addi sp, sp, -16

    #.... resto de instrucciones

    #.... es par
    li t0, 1

    #-- Guardar t0 en la pila
    sw t0, 0(sp)

    #-- Imprimir mensaje
    jal mensaje_par

    #--- Recuperar t0 de la pila
    lw t0, 0(sp)

    #-- devolver codigo de retorno (que está en t0)
    mv a0, t0

    #--- Liberar espacio de la pila
    addi sp, sp, 16

    ret
```





