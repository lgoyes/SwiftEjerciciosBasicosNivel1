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

Se puede hacer que una clase `A` herede de otra clase `B`. Sin embargo, no se puede heredar de múltiples clases, al mismo tiempo. Es decir, una clase `A` no puede heredar de `B` y también de `C` al mismo tiempo. No obstante, `A` puede heredar de `B`; y, a su vez, `B` puede heredar de `C`.

#### Instancias

De la misma manera que con las estructuras, se debe crear una instancia de una clase, para poderse usar. Por ejemplo, considerando las clases `SerVivo` y `Humano` de antes:

```
let rocky = SerVivo()
let luisDavid = Humano()
```

En este caso, Luis David, que es un `Humano` también es un `SerVivo`.

#### Inicializador

Para usar una clase, debe especificarse el valor inicial de sus atributos. En la `estructura` venía un inicializador por defecto, gratis. En la `clase` se debe crear el inicializador manualmente:

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

No siempre se tiene que pasar el valor inicial del atributo desde fuera. Puede ser que el mismo inicializador sea quien defina el valor por defecto de sus atributos. Por ejemplo:

```
class SerVivo {
    var nombre: String
    init() {
        self.nombre = "Un ser vivo más" // OK
    }
}
```


#### Ubicación en memoria de una Estructura

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

#### Ubicación en memoria de una Clase

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

#### Comparación de la ubicación en memoria de una Clase vs una Estructura

Como vimos en las dos secciones anteriores, puede ser peligroso usar clases, porque al modificar una instancia, se puede estar afectando otra variable de forma involuntaria.

Por eso hay que preferir las estructuras. Solo se debe usar clases cuando se necesite heredar.

#### Modificadores de acceso

Una propiedad importante de las clases y estructuras es el *encapsulamiento*. El encapsulamiento consiste en ocultar parte de la información de una clase al mundo exterior. Es decir: a veces la clase puede tener atributos que solo ella necesita conocer, o puede tener métodos que solo ella va a usar. En estos casos, se modifica el acceso del atributo o del método según como sea necesario.

##### Niveles de acceso

A continuación se van a enumerar los distintos niveles de acceso:

* El modificador de acceso **private** impide que clases externas puedan hacer uso de la propiedad o método modificado. En otras palabras: una variable **private** no se puede leer ni escribir desde afuera de la clase. Asímismo, un método **private** no se puede invocar desde fuera de la clase.
* El modificador de acceso **fileprivate** restringe el uso de una entidad por fuera del archivo donde se definió.
* El modificador de acceso **internal** permite que otras clases, _dentro del mismo proyecto_, hagan uso de la propiedad o método modificado. En otras palabras: una variable **internal** puede ser leída y modificada desde fuera de la clase, por otra clase, dentro del mismo proyecto. Un método **internal** puede ser invocado por otra clase, dentro del mismo proyecto. **Este es el modificador de acceso por defecto**.
* El modificador de acceso **public** permite que otras clases, _fuera del proyecto_, hagan uso de la propiedad o método modificado. Este modificador es usado para construir librerías.

Los modificadores de acceso se colocan antes de la definición del método y de la variable. Por ejemplo:

```
class Student {
    var nombre: String
    internal var apellido: String
    private var edad: Int
    private var documentoIdentidad: String
    init( nombre: String, apellido: String, edad: Int ) {
        self.nombre = nombre
        self.apellido = apellido
        self.edad = edad
        self.documentoIdentidad = "12345123"
    }
}

let luisDavid = Student(nombre: "Luis", apellido: "Goyes", edad: 10)

class Teacher {
    private var materia: String
    var nombre: String
    init(materia: String, nombre: String) {
        self.materia = materia
        self.nombre = nombre
    }
}
```

Algunas observaciones:
* En la clase `Student`, la variable `nombre` es **internal** (por defecto), lo cual significa que `Teacher` puede leerla y modificarla.
* En la clase `Student`, la variable `apellido` es **internal** (explícita), lo cual significa que `Teacher` puede leerla y modificarla.
* En la clase `Student`, la variable `edad` es **private**, lo cual significa que `Teacher` NO tiene acceso a ella.
* En la clase `Student`, la variable `documentoIdentidad` es **private**, lo cual significa que `Teacher` NO tiene acceso a ella.
* La diferencia entre `edad` y `documentoIdentidad`, es que `edad` puede ser inicializada desde fuera, a través del inicializador de `Student`; mientras que `documentoIdentidad` es una variable que nunca puede ser modificada desde fuera, porque se le asigna un valor por defecto en el inicializador.
* En la clase `Teacher`, la variable `materia` es **private**, lo cual significa que `Student` NO tiene acceso a ella.
* En la clase `Teacher`, la variable `nombre` es **private**, lo cual significa que `Student` puede acceder a ella.

##### Métodos accesores

A veces se require modificar parcialmente el acceso de una variable, de modo que se permita su lectura, pero no su escritura; o viceversa. En estos casos, resulta muy útil agregar unos métodos accesores `getVARIABLE` y `setVARIABLE`. Por ejemplo:

```
class Dog {
    private var nombre: String
    init( nombre: String ) {
        self.nombre = nombre
    }
    
    func getNombre() -> String {
        return nombre 
    }
    
    func setNombre(nombre: String) {
        self.nombre = nombre
    }
}
```

En la clase `Dog`, se tiene solo una variable `nombre` que es `private`, por lo cual se impide el acceso a ella desde el exterior. No obstante, por medio de `getNombre` se puede leer su valor, y por medio de `setNombre` se puede asignar su valor. Tenga en cuenta que a veces puede requerir los dos métodos accesores, o quizás solo uno de ellos, dependiendo de las necesidades. Por ejemplo, si lo único que se permitir es la lectura de la variable, solo se agrega el método `getNombre`. Si lo único que se quiere permitir es la modificación de la variable, solo se agrega `setNombre`.

### Ejercicios

1. Crea una clase llamada `Cuenta` que tendrá los siguientes atributos: el número de documento de su titular y cantidad (puede tener decimales).

Crear un inicializador que solo reciba el nombre del titular, y que fije la cantidad de la cuenta, por defecto, en `0`.

La cantidad no puede modificarse directamente, sino que debe hacerse uso de alguno de los siguientes dos métodos:

* `func ingresar(cantidad: Double)`: Se ingresa una cantidad a la cuenta. Si la cantidad introducida es negativa, no se hará nada. Si es positiva, se suma a la cantidad actual.

* `func retirar(cantidad: Double)`: Se retira una cantidad de la cuenta. Si la cantidad introducida es negativa, no se hará nada. Si es positiva, se resta de la cantidad actual. Si la cantidad a retirar es mayor que la cantidad actual de la cuenta, la cantidad de la cuenta pasa a ser 0.

Tenga presente que, de requerir alguna función auxiliar, debe asegurarse que sea `private`, pues el mundo exterior no necesita conocer esos detalles de implementación.

2. Hacer una clase llamada `Persona` que siga las siguientes condiciones:

Sus atributos son: `nombre`, `edad`, `documentoIdentidad`, `sexo` (Masculino o Femenino), `peso` y `altura`. No se debe poder acceder a ellos directamente, así que debe agregar métodos accesores según como sea necesario (¿el sexo y el documento de identidad de una persona, se pueden cambiar en un futuro?).

Implementar métodos que permitan:

* Saber si la persona es mayor de edad.
* Comprobar si es hombre.
* Obtener un mensaje de presentación de la persona: El nombre seguido de la edad. ("Hola me llamo X y tengo Y años").

3. Hacer una clase llamada `Password` que siga las siguientes condiciones:

Sus atributos son `longitud` y `valor`.

Cuando se inicialice la clase, se debe pasar únicamente la longitud deseada. Luego, internamente, debe generar de forma aleatoria, una contraseña con esa longitud, y almacenarla en `valor`.

No debe poderse modificar el `valor` de la contraseña desde fuera, pero sí debe poderse leer.
La longitud no debe poderse modificar, ni leer, desde fuera.

Implementar métodos que permitan saber si la contraseña es fuerte, o sea, si tiene al menos 2 mayúsculas, 1 minúscula y 5 números.

Nota:

En este ejercicio hay que investigar. Sin embargo, se puede intentar resolverlo con base en las siguientes preguntas.

* ¿Cómo obtener un número entero aleatorio?
* ¿Cómo obtener un caracter dentro un arreglo de caracteres (string)?
* ¿Cómo se agregan palabras a un string ya existente?

4. Hacer una clase `InventarioTienda` que tenga `Series` y `Videojuegos`.

Hacer una clase llamada `Serie` con las siguientes características:
* Sus atributos son `título`, `numeroTemporadas`, `género`, `añoDistribucion`, `disponible` y `creador`.
* Se deben tener un inicializador que acepte valores para todos los atributos de la clase.
* Después de inicializarse, todos los atributos se pueden leer, pero no sobreescribir; excepto `disponible`, que se puede leer y escribir. 

Hacer una clase `VideoJuego` con las siguientes características:
* Sus atributos son `título`, `horasDeJuego`, `género`, `compañía` y `disponible`.
* Se deben tener un inicializador que acepte valores para todos los atributos de la clase.
* Después de inicializarse, todos los atributos se pueden leer, pero no sobreescribir; excepto `disponible`, que se puede leer y escribir. 

Como vemos, las clases anteriores son parecidas; sin embargo, un `VideoJuego` no es una `Serie`, ni tampoco una `Serie` es un `VideoJuego`. Es decir, no se puede establecer ninguna relación clase-madre/clase-hija entre `Serie` y `VideoJuego`. Sin embargo, ambas clases son `Entregables`.

Un `Entregable` es una protocolo con las siguientes características:
* Sus atributos son `título`, `género` y `disponible`.
* Tiene el método para `prestar`, que cambia el atributo `disponible` a `false`.
* Tiene el método para `devolver`, que cambia el atributo `disponible` a `true`.

 Una vez implementadas las clases anteriores, crear un programa para administrar `Series` y `VideoJuegos` (crear, eliminar y listar); que permita prestar y devolver entregables; y que cuente cuántas series y juegos hay disponibles en la tienda.
 
 5. Defina una clase `Forma` que tenga los siguientes atributos:
 * Color
 * Coordenada del centro de la forma (crear una clase `Punto`)
 * Nombre de la forma

Y, al menos, los siguientes métodos:
* Imprimir
* Obtener y cambiar el color
* Mover la forma (o sea, su centro)

Defina  una  clase  derivada  `Rectangulo`  que  tenga  los  siguientes atributos:
* Lado menor.
* Lado mayor.

Y, al menos, las siguientes funciones: 
* Imprimir.  Debe  imprimir  qué  se  trata  de  un  rectángulo  mostrando  su  nombre,  color,  centro  y  lado.  (Investigar cómo sobre-escribir el comportamiento definido por la clase `Forma`)
* Calcular el área (lado menor * lado mayor).
* Calcular el perímetro. (2 * lado menor + 2 * lado mayor)
* Cambiar  el  tamaño  del  rectángulo.  Recibe  como  parámetro  un  factor  de  escala.  Así,  por  ejemplo,  si  el  factor  vale  2,  el  rectángulo  duplicará  su  tamaño y si es 0,5 se reducirá a la mitad. Realice  un  programa  que  pruebe  el  funcionamiento  de  estas  clases.  Debe  crear  objetos y comprobar el correcto funcionamiento de los métodos. 

Defina  una  clase  `Elipse`  derivada  de  `Forma`.  Recordatorio:  una  elipse  queda  definida  por  su  radio  mayor  (`R`)  y  su  radio  menor  (`r`),  tal  que  el  área  de  una  elipse es igual a `pi*(R*r)`. 
* La clase `Elipse` debe poder indicar qué  se  trata  de  un elipse  mostrando  su  nombre,  color,  centro, radio mayor y radio menor. (Investigar cómo sobre-escribir el comportamiento definido por la clase `Forma`)

Defina una clase `Cuadrado` derivada de la clase `Rectangulo`.
* La clase `Cuadrado` debe poder indicar qué  se  trata  de  un cuadrado y no un rectángulo.

Defina una clase `Circulo` derivada de la clase `Elipse`.
* La clase `Círculo` debe poder indicar qué  se  trata  de  un circulo y no un elipse.

6. Definir el protocolo `SerVivo` que tiene los siguientes métodos: `Respirar`, `alimentarse`, `habitar`, `reproducirse`, `desplazarse`. Todos retornan `String` y no reciben parámetros.

Las clases `Ave`, `Mamífero`, `Reptil`, `Anfibio`, `Pez` e `Insecto` conforman el protocolo `SerVivo`. Estas clases deben contener variables heredables para los atributos característicos de cada especie, por ejemplo: `Numero de patas`, `si tiene alas`, `tipo de piel` (pelaje, plumas, escamas, etc), si es `acuático`, `terrestre` o `aereo`, si pone huevos o no`, si tiene branquias o nariz, si camina, nada o vuela, lugar que habita (selvas, lagos, árboles, etc), tipo de alimentación (carnívoro, herbívoro, etc), etc. Estas clases deben contar con inicializadores para inicializar todas las variables.

Implemente una clase que herede de cada una de las clases del punto anterior, por ejemplo: `Sardina` hereda de `Pez` y así con las demás clases. Estas clases deben contrar con atributos adicionales que los diferencien de otros seres vivos de su misma especie (por ejemplo, un león y un orangután son ambos mamíferos, pero son completamente distintos).

Estas clases deben sobre escribir los métodos heredados del protocolo `SerVivo` para que impriman un informe con la información concerniente al método que sobreescriban; por ejemplo, la clase `Chimpance` en su método `habitar`, deben retornar algo así como "Generalmente habitamos en los árboles".

Crear una aplicación que instance algunos objetos de las clases que sean hijas de `Ave`, `Mamífero`, `Reptil`, `Anfibio`, `Pez` e `Insecto`. Luego, cree una función `imprimirDatosSerVivo` que reciba un `SerVivo` y que imprima lo que retornen los métodos `habitar` y `alimentarse` de dicho servivo.



