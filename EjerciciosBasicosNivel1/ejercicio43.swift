//
//  ejercicio43.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 30/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 43. Haga un algoritmo que dibuje en pantalla un triágulo, como se indica en el siguiente ejemplo para `N=4`:

 ```
 O
 OO
 OOO
 OOOO
 OOO
 OO
 O
 ```
 + Resuelva el ejercicio imprimiendo un mensaje por línea
 + Resuelva el ejercicio imprimiendo un solo mensaje (use el caracter `\n` para saltar de línea)
 */

func ejercicio43() {
    print("Ingrese el numero N:")
    let mensaje = readLine()!
    guard let numeroN = Int(mensaje) else {
        print("El texto ingresado no puede convertirse a Int")
        return
    }

    for contadorFila in (0..<(2 * numeroN - 1)) {
        var mensajeFila = ""
        var limiteForColumna = contadorFila + 1
        if (contadorFila >= numeroN) {
            limiteForColumna = 2 * numeroN - 1 - contadorFila
        }
        for _ in (0..<limiteForColumna) {
            mensajeFila.append("O")
        }
        print(mensajeFila)
    }
}
