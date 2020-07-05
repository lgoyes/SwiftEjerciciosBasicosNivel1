//
//  ejercicio42.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 30/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 42. Haga un algoritmo que dibuje en la pantalla un triángulo recto de base y altura N, como se indica en el siguiente ejemplo para `N=5`:

 ```
 OOOOO
 OOOO
 OOO
 OO
 O
 ```
 */

func ejercicio42() {
    print("Ingrese el tamaño de la base del triángulo (N):")
    let mensaje = readLine()!
    guard let numeroN = Int(mensaje) else {
        print("El texto ingresado no puede convertirse a Int")
        return
    }
    
    for contadorFila in (0..<numeroN) {
        var mensajeFila = ""
        for _ in (0..<(numeroN-contadorFila)) {
            mensajeFila.append("O")
        }
        print(mensajeFila)
    }
    
    var mensajeCompleto = ""
    for contadorFila in (0..<numeroN) {
        for _ in (0..<(numeroN-contadorFila)) {
            mensajeCompleto.append("O")
        }
        mensajeCompleto.append("\n")
    }
    print(mensajeCompleto)
}
