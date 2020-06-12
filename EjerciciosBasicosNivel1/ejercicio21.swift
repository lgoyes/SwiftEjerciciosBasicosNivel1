//
//  ejercicio21.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 12/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 21. Haga un algoritmo que pida un punto `(x,y)` al usuario (en dos pasos) y determine si pertenece o no a la recta `y=2x-3`.
 */

func ejercicio21() {
    while true {
        print("Ingrese el numero X del punto")
        var message = readLine()!
        guard let numeroX = Double(message) else {
            print("El texto ingresado no puede convertirse a Double")
            continue
        }
        
        print("Ingrese el numero Y del punto")
        message = readLine()!
        guard let numeroY = Double(message) else {
            print("El texto ingresado no puede convertirse a Double")
            continue
        }
        
        let yRecta = 2 * numeroX - 3
        
        if (yRecta == numeroY) {
            print("El punto (\(numeroX),\(numeroY)) SI está sobre la recta Y=2x+3")
        } else {
            print("El punto (\(numeroX),\(numeroY)) NO está sobre la recta Y=2x+3")
        }
    }
}
