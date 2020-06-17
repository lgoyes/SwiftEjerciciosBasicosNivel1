//
//  ejercicio35.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 17/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation
/*
 35. Haga un algoritmo que le muestre al usuario la tabla de multiplicación de un número entero ingresado por el usuario (`N`). Además, el usuario también debe ingresar el límite (`L`) de la tabla de multiplicación. Por ejemplo, si el usuario ingresa `3` y `4`, el algoritmo debe imprimir: `3`, `6`, `9`, `12`.
 */

func ejercicio35() {
    var mensaje = ""
    while true {
        print("Ingrese el número N del cual se imprimiran sus múltiplos:")
        mensaje = readLine()!
        guard let multiplicando = Int(mensaje) else {
            print("El texto ingresado no puede convertirse a Int")
            return
        }
        
        print("Ingrese el número L que servirá como límite:")
        mensaje = readLine()!
        guard let limiteMultiplicaciones = Int(mensaje) else {
            print("El texto ingresado no puede convertirse a Int")
            return
        }
        
        var multiplicaciones = [Int]()
        for multiplicador in (1...limiteMultiplicaciones) {
            multiplicaciones.append(multiplicando * multiplicador)
        }
        
        print(multiplicaciones.map{String($0)}.joined(separator: ", "))
    }
}
