//
//  ejercicio28.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 14/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 28. Haga un algoritmo que calcule el factorial de un número ingresado por el usuario.
 */

func ejercicio28() {
    print("Ingrese un número para calcularle su factorial: ")
    let message = readLine()!
    guard let numeroN = Int(message) else {
        print("El texto ingresado no puede convertirse a Int")
        return
    }

    var factorial = 1
    for i in (0..<numeroN) {
        factorial *= (numeroN - i)
    }

    print("El factorial de \(numeroN) es \(factorial)")
}
