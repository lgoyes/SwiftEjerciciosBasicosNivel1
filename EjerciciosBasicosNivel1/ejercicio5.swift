//
//  ejercicio5.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 10/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*:
 5. Imprima un saludo. Luego, pida al usuario su nombre. Captúrelo (ver función readLine()) y al final imprima un mensaje de bienvenida usando el nombre del usuario ingresado: "Bienvenido al programa \(nombre)"
*/

func ejercicio5() {
    var nombre = ""
    print ("Buenos días")
    print ("Por favor ingrese su nombre")
    if let string = readLine() {
        nombre = string
    }
    print("Bienvenido al programa \(nombre)")
}
