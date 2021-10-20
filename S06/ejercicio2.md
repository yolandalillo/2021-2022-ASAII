**EJERCICIO 2**

Partimos del diseño del ejercicio 1. Para mejorarlo decidimos cambiar la puerta NOT2 por una similar a la NOT1, que es mucho más rápida. El circuito a nivel lógico es igual, pero los retardos se mejoran

![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S06/images/ejercicio2.png)


  a) Calcular el retardo del circuito al realizar ese cambio
   
  **En total tenemos cuatro caminos**
  
  **Camino 1: AND1 + NOT 1 = 2ns**
  
  **Caminos 2: AND1 + AND2 = 5ns**
  
  **Camino 3: AND1 + OR + AND2 = 7ns**
  
  **Camino 4: NOT1 + OR + AND2 = 7ns**
  
  **El retardo del circuito es 7ns que corresponde al camino 3 y 4 que son los caminos críticos**
   
   b) Para mejorar el circuito todavía más, se decide cambiar la AND2 por otra similar a la AND1. Calcular el nuevo retardo
   
 ![Image text](https://github.com/yolandalillo/2021-2022-ASAII/blob/main/S06/images/ejercicio2.1.png)
 
    
  **En total tenemos cuatro caminos, que son los mismo que en el apartado anterior**
  
  **Camino 1: AND1 + NOT 1 = 2ns**
  
  **Caminos 2: AND1 + AND1 = 2ns**
  
  **Camino 3: AND1 + OR + AND1 = 4ns**
  
  **Camino 4: NOT1 + OR + AND1 = 4ns**
  
  **El retardo del circuito es 4ns que corresponde al camino 3 y 4 que son los caminos crítico**


