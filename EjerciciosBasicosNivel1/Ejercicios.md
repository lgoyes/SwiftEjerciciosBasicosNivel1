# Ejercicios de programación
 
 A continuación se presentará una serie de ejercicios de algoritmos de programación, cuya dificultad irá aumentando, progresivamente. Se pueden resolver con cualquier lenguage de programación aunque aquí se presente la solución de los mismos usando el lenguaje de programación Swift.

1. Calcule la distancia recorrida `x` [m] por un móvil que tiene velocidad constante `v=5` [m/s] durante un tiempo `t=2` [s]. Imprima la distancia recorrida.

2. Calcule la distancia recorrida `x` [m] por un móvil que se desplaza a velocidad constante `v1=60` [m/s] durante `t1=5` [s], y luego a velocidad constante `v2=30` [m/s] durante `t2=12` [s]. Imprima la distancia recorrida.

3. En un curso de programación se hicieron cuatro examenes (con notas entre 0 y 5). Todos con el mismo peso. Calcule el promedio de las notas dadas: `n1`, `n2`, `n3`, `n4`. Al final, imprima "Aprobó", si la nota promedio es mayor o igual que 3, o "Reprobó" en caso contrario.

4. En un curso de programación avanzada se hicieron seis examenes (con notas entre 0 y 5), con distintos pesos: El primero, valía el 10% de la nota final; el segundo, valía el 15%; el tercero valía 6%; el cuarto valía 29%, el quinto 12% y el sexto 28%. Guarde las notas en un arreglo, y los pesos en otro arreglo. Calcule la nota promedio. Si la nota es menor que 1, imprima "Bruto!"; Si es menor que 2, imprima "Mejor dedíquese a otra cosa"; Si es menor que 2.96, imprima "Se peló por nada"; Si es menor que 3.5, imprima "no celebre tanto"; si es menor que 4.5, imprima "tiene futuro"; si es mayor o igual que 4.5 imprima "Campeón".

 5. Imprima un saludo. Luego, pida al usuario su nombre. Captúrelo (ver función `readLine()`) y al final imprima un mensaje de bienvenida usando el nombre del usuario ingresado: `"Bienvenido al programa \(nombre)"`
 
 6. Imprima un saludo. Seguido de eso, pida la edad al usuario. Imprima "Mayor de edad", si la edad ingresada es mayor de 18 años; de lo contrario escriba "Todavía es un niño".

7. Las evaluaciones de un curso están valoradas como se muestra a continuación:
  * Examen 1: 50%.
  * Examen 2: 30%.
  * Examen 3: 20%.
Haga un algoritmo que tome como entradas: el nombre, la identificación y las 3 notas del estudiante. Éste debe imprimir como salida el nombre, la identificación y la nota definitiva obtenida por el estudiante.

  * Solucione el ejercicio sin usar arreglos
  * Solucionelo usando arreglos

8. Pida al usuario un número decimal cualquiera. Si el cuadrado del numero es mayor que 1, imprima "El numero X puede crecer"; De lo contrario, imprima "el numero X ya no crece más, donde X es el número expresado con solo 2 cifras decimales.
  * Extra: Modifique el programa para que repita este procedimiento infinitas veces (cómo se hace un ciclo infinito?)

9. Escriba un programa para adivinar un numero del 1 al 10.
Pasos:
   1. Genere un numero aleatorio del 1 al 10
   2. Pida al usuario que ingrese un número
   3. Compare el numero aleatorio, con el numero ingresado con el usuario.
       En caso de acertar imprima en pantalla: "Dio en el blanco!"
       En caso de fallar imprima en pantalla el mensaje que correspoda:
        * Si la diferencia entre el numero ingresado y el numero aleatorio es 1 -> "Se pelo por nada"
        * Si la diferencia es mayor que 1 y menor que 5 -> "Mejor suerte para la proxima"
        * Si la diferencia es mayor o igual que 5 -> "Adivinar no es lo suyo. Busque otra profesion"
       Imprima en pantalla el numero aleatorio.

Bonus:
   Convierta este programa en un juego con puntos, que se repita indefinidamente (ciclo infinito).
   * Si acertó, sume 100 puntos.
   * Si fallo por 1, sume 50 puntos.
   * Si fallo por menos de 5, sume 10 puntos.
   * Si la diferencia es mayor o igual que 5, reste 10 puntos.
   * Imprima el puntaje acumulado en cada turno.
Tenga en cuenta que la diferencia entre el numero ingresado, y el numero aleatorio, puede ser positiva o negativa. Por eso, averigüe como calcular el valor absoluto de un numero en swift.

10. Una oficina de seguros ha reunido datos concernientes a todos los accidentes de tránsito ocurridos en el área metropolitana en el último año.
Por cada conductor involucrado se toman los siguientes datos:
    * Año de nacimiento
    * Sexo (F: Femenino, M: Masculino)
    * Registro del carro (1: Medellín, 2: Girardota, 3: Bello, 4: Otros municipios)
Haga un programa que muestre:
  * El porcentaje de conductores menores de 25 años
  * El porcentaje de conductores de sexo femenino
  * El porcentaje de conductores cuyos carros están registrados fuera de Medellín.

Use los siguientes datos:

```
let anyosNacimientos = [1961,1967,1994,1996]
let sexos = ["M", "F", "M", "F"]
let registroDelCarro = [1, 2, 3, 4]
```

11. En una evaluación, se calcula el puntaje de cada estudiante según el número de respuestas correctas, incorrectas y en blanco.
  * Por cada respuesta correcta, tendrá 5 puntos, respuestas incorrectas tendrá -2 y respuestas en blanco tendrá -1.
  * Pida al usuario cada una de estas variables como entradas de consola.

12. Se requiere elaborar una planilla de un empleado para pagarle sus salario mensual. Para ello, pida el número de horas laboradas en el mes, así como la tarifa por hora.
  * Pida al usuario cada una de estas variables como entradas de consola.

13. Desarrolle un algoritmo que permita calcular el volumen y el area superficial de un cubo

 14. Escriba un algoritmo que permita calcular la hipotenusa de un triángulo rectángulo utilizando el teorema de Pitágoras.
 
 15. Frente a mi casa hay una máquina dispensadora que tiene 4 productos etiquetados con los números 1, 2, 3 y 4; cada uno con un valor de $500, $800, $300, y $900 pesos, respectivamente.
   * Defina un algoritmo que lea el número de producto que ingresa el usuario y que le muestre su precio. Si el producto ingresado no existe, debe informarlo.

16. Construir un programa que, dada una temperatura en grados Kelvin, muestre su equivalente en grados Centígrados y Fahrenheit. Las fórmulas de conversión son:
```
C = K - 273.15
F = (9/5) * C + 32
```

17. Leer 3 números enteros, cada uno de un dígito. Construir un número decimal en el cual, la parte entera sea el segundo número leído, y la parte decimal, el primer y tercer número leído. Por ejemplo, si el usuario ingresa los números 1, 2 y 3; el número resultante será 2.13.

18. Calcular el número de horas de sueño de una persona, si se ingresa la hora a la que se va a la cama, la hora a la que se va a levantar, y se tiene en cuenta que la persona se demora 30 minutos en quedarse dormida. Por facilidad, trabaje solo con horas (sin minutos) y en formato de 24 horas.

19. Con base en el ejercicio anterior, calcule el número de horas de sueño de una persona que tiene problemas para dormir. En este caso, existe una probabilidad `P=3/10` de que la persona se despierte durante la noche. Si se despierta, permanecerá en vela 2 horas.
* Para el cálculo de la probabilidad `P=1/10`, busque un número aleatorio `N` entre 1 y 10. Como todos los números son equiprobables, `P=1/10` se obtiene cuando `N=1`. Es decir, `P=1/10` significa que la persona se va a levantar si `N=1`. En otro escenario, `P=2/10` significa que la persona se va a levantar si `N=1` o `N=2`.
* Con base en el análisis anterior, `P=3/10` significa que la persona se va a levantar en esa noche si `N=1`, `N=2` o  `N=3`

20. Cree un programa tendero. Se podrá elegir una de las siguientes dos opciones: (1) Añadir una bolsa de leche al carrito y (2) Contar productos del carrito y salir. El programa debe iterar indefinidamente, pidiendo al cliente que ingrese una opción, y debe salir/terminar cuando se ingresa la opción 2. Antes de salir, debe imprimir en pantalla el número de productos que se agregaron al carrito. Si el usuario ingresa una opción que el tendero no reconoce, debe repetir el ciclo (continue).

21. Haga un algoritmo que pida un punto `(x,y)` al usuario (en dos pasos) y determine si pertenece o no a la recta `y=2x-3`.

22. El un almacén que venden balones se ofrecen descuentos de acuerdo a la cantidad que se compre. Si el cliente compra 3 o menos balones, no hay descuento; si compra entre 4 y 6, se da un descuento del 20%; y si se compran más de 6, se da un descuento del 25%. Haga un algoritmo que determine el valor total a pagar, dado el precio unitario de un balón y la cantidad de balones a comprar.

23. Haga un algoritmo que pida dos números `n1` y `n2` y determine si `n2` es múltiplo de `n1`.

24. Haga un algoritmo que determine si un año es bisiesto o no. Tenga en cuenta que para que un año sea bisiesto, éste debe ser múltiplo de 4 y, además, no puede ser múltiplo de 100; a no ser que sea también múltiplo de 400.

25. Extienda el algoritmo del año bisiesto para que, en caso de que el año no sea bisiesto, diga cuál sería el siguiente año bisiesto.

26. Haga un algoritmo que lea un número entero `n` y que imprima todos los múltiplos de `3` hasta `n`.

27. Escriba un programa que imprima la sumatoria de los múltiplos de `3` y `5` que sean menores que `N`, ingresado por el usuario. Por ejemplo, si el usuario ingresa el valor `N=17`, entonces los múltiplos de
`3` y `5` entre `1` y `17` son `3`, `5`, `6`, `9`, `10`, `12`, y`15`, por lo tanto, el programa imprimirá `60`.

28. Haga un algoritmo que calcule el factorial de un número ingresado por el usuario.

29. En un experimento se deben tomar medidas de temperatura cada hora por un día completo. Haga
un algoritmo que lea las medidas y determine la temperatura más alta, la más baja y la promedio.

30. Haga un algoritmo que reciba números repetidamente y que en cada iteración muestre el promedio de los números impares ingresados hasta el momento. El algoritmo debe finalizar cuando el número ingresado sea el cero.

31. Haga un algoritmo que muestre todos los divisores de un número entero ingresado y que diga cuántos divisores tiene.

32. Haga el diagrama de flujo de un algoritmo que encuentre el máximo común divisor (MCD) entre dos números `A` y `B` ingresados por el usuario. El MCD es el número más grande que divide en forma exacta tanto a `A` como a `B`. Si el MCD resulta ser 1, el algoritmo deberá imprimir "No existe", de lo contrario deberá imprimir el MCD encontrado.

33. Haga un algoritmo que imprima los primeros N términos de la serie de Fibonacci, donde N es ingresado por el usuario. Esta serie inicia con los elementos 0 y 1, y cada nuevo término se calcula como la suma de los dos anteriores. Así, la serie sería 0, 1, 1, 2, 3, 5...

34. Haga un algoritmo que muestre los primeros N términos de la serie: 10, 11, 20, 21, 30, 31, 40, 41, 50, 51...


