//
//  ejercicio44.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 5/07/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation
/*
 Haga un algoritmo que, dado un número `N`, dibuje en la pantalla un rombo de diagonales superior e inferior, `D=N` y `d=N`, respectivamente. Por ejemplo, dado `N=7`, el programa debería pintar la siguiente figura:

 ```
123x
12xxx
1xxxxx
xxxxxxx
1xxxxx
12xxx
123x
 ```
 + Resuelva el ejercicio imprimiendo un mensaje por línea
 + Resuelva el ejercicio imprimiendo un solo mensaje (use el caracter `\n` para saltar de línea)
 */

func ejercicio44() {
    print("Ingrese el numero N:")
    let mensaje = readLine()!
    guard let numeroN = Int(mensaje) else {
        print("El texto ingresado no puede convertirse a Int")
        return
    }

    var numberOfMarks = 1
    var numberOfSpaces = numeroN / 2
    for contadorFila in (0..<numeroN) {
        var mensajeFila = ""
        for _ in (0..<numberOfSpaces) {
            mensajeFila.append(" ")
        }
        for _ in (0..<numberOfMarks) {
            mensajeFila.append("O")
        }
        if contadorFila < numeroN / 2 {
            numberOfSpaces -= 1
            numberOfMarks += 2
        } else {
            numberOfMarks -= 2
            numberOfSpaces += 1
        }
        print(mensajeFila)
    }
}
