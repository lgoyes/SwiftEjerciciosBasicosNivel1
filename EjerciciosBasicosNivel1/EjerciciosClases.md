# Ejercicios de Classes

## Clases

### Teoría

Las `Clases` son herramientas flexibles de propósito general, que se convierten en los bloques de contrucción de todos los programas de Swift. Dentro de una clase se definen propiedades (variables y constantes) y métodos.

Una clase es una plantilla que define una forma, por medio de las propiedades, y un comportamiento, por medio de los métodos. Cada elemento creado a partir de la plantilla se conoce como `objeto`.

#### Clases y Estructuras

Las clases son muy parecidas a las estructuras, en cuanto a que se pueden tener variables y métodos; sin embargo, tienen una diferencia fundamental: Una clase puede *heredar* de otra clase, mientras que una estructura es incapaz.

Ya hemos visto que una estructura puede conformar un protocolo, pero, si por ejemplo, hacemos que una estructura herede de otra estructura sus propiedades, saldrá un error:

```
struct Resolucion {
    var ancho: Double
    var alto: Double
}

struct Pantalla: Resolucion {
    // ERROR
}
```

Esto se podría hacer si, en lugar de usar estructuras, lo hiciéramos con clases:

```
class SerVivo {
    var nombre: String
}

class Humano: SerVivo {
    // OK
}
```

#### Instancias

De la misma manera que con las estructuras, se debe crear una instancia de una clase, para poderse usar. Por ejemplo, considerando las clases `SerVivo` y `Humano` de antes:

```
let rocky = SerVivo()
let luisDavid = Humano()
```

En este caso, Luis David, que es un `Humano` también es un `SerVivo`.

#### Inicializador

Para usar una clase, debe especificarse el valor inicial de sus parámetros. En la `estructura` venía un inicializador por defecto, gratis. En la `clase` se debe crear el inicializador manualmente:

```
class SerVivo {
    var nombreInterno: String
    init(nombreExterno: String) {
        nombreInterno = nombreExterno
    }
}
```

Hay un problema si se usa el mismo nombre en la variable interna y la variable externa:

```
class SerVivo {
    var nombre: String
    init(nombre: String) {
        nombre = nombre // ERROR!!!!
    }
}
```

El compilador no sabe a cuál `nombre` le está asignando el valor de `nombre`. No sabe si al interno le asigna el externo, o si al interno se le asigna el interno.

La solución, es distinguir con la palabra clave `self` para aclarar que es *MI* propiedad, la que quiero modificar, y no la que viene de afuera, como se ve en el siguiente ejemplo:

```
class SerVivo {
    var nombre: String
    init(nombre: String) {
        self.nombre = nombre // OK
    }
}
```

### Ubicación en memoria de una Estructura

Definamos una estructura `Persona` con un nombre así:

```
struct Person {
    var nombre: String
}
```

Se puede hacer una instancia de `Persona` llamada `luis` así:

```
var luis = Person(nombre: "Luis David")
```

Hagamos otra variable llamada `david` igual a `luis`.

```
var david = luis
```

Si modifico el nombre de `luis`, ¿También se modifica el nombre de david?

```
luis.nombre = "Fulano"
```

En realidad no. Si se modifica `luis`, `david` permanece inalterado.

```
print(david.nombre) // Imprime "Luis David"
```

### Ubicación en memoria de una Clase

Ya vimos cómo funciona en memoria una estructura, ahora vamos a ver cómo funciona en una clase, para que podamos comparar.

Definamos una clase `Persona` con un nombre así:

```
class Person {
    var nombre: String
    init( nombre: String ) {
        self.nombre = nombre
    }
}
```

Se puede hacer una instancia de `Persona` llamada `luis` así:

```
var luis = Person(nombre: "Luis David")
```

Hagamos otra variable llamada `david` igual a `luis`.

```
var david = luis
```

Si modifico el nombre de `luis`, ¿También se modifica el nombre de david?

```
luis.nombre = "Fulano"
```

Si. Cuando se trabaja con clases, si se modifica `luis`, `david` se verá afectado.

```
print(david.nombre) // Imprime "Fulano"
```

### Comparación de la ubicación en memoria de una Clase vs una Estructura

Como vimos en las dos secciones anteriores, puede ser peligroso usar clases, porque al modificar una instancia, se puede estar afectando otra variable de forma involuntaria.

Por eso hay que preferir las estructuras. Solo se debe usar clases cuando se necesite heredar.

### Ejercicios
