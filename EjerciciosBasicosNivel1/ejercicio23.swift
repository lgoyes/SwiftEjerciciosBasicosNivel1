//
//  ejercicio23.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 12/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 23. Haga un algoritmo que pida dos números `n1` y `n2` y determine si `n2` es múltiplo de `n1`.
 */

func ejercicio23() {
    while true {
        print("Ingrese n1")
        var message = readLine()!
        guard let n1 = Int(message) else {
            print("El texto ingresado no puede convertirse a Int")
            continue
        }
        
        print("Ingrese n2")
        message = readLine()!
        guard let n2 = Int(message) else {
            print("El texto ingresado no puede convertirse a Int")
            continue
        }
        
        if n2 % n1 == 0 {
            print("\(n2) es multiplo de \(n1)")
        } else {
            print("\(n2) NO es multiplo de \(n1)")
        }
    }
}
