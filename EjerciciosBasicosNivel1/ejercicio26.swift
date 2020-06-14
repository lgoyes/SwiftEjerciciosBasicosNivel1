//
//  ejercicio26.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 14/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 Haga un algoritmo que lea un número entero `n` y que imprima todos los múltiplos de `3` hasta `n`.
 */

func ejercicio26() {
    print("Ingrese el numero de multiplos de 3 que quiere calcular: ")
    let message = readLine()!
    guard let numeroN = Int(message) else {
        print("El texto ingresado no puede convertirse a Int")
        return
    }
    
    for multiplicador in (1...numeroN) {
        print("\(3 * multiplicador)")
    }
}
