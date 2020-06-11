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
