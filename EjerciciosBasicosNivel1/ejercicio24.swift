//
//  ejercicio24.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 12/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 Haga un algoritmo que determine si un año es bisiesto o no. Tenga en cuenta que para que un año sea bisiesto, éste debe ser múltiplo de 4 y, además, no puede ser múltiplo de 100; a no ser que sea también múltiplo de 400.
 */

func ejercicio24() {
    while true {
        print("Ingrese el año")
        let message = readLine()!
        guard let anyo = Int(message) else {
            print("El texto ingresado no puede convertirse a Int")
            continue
        }
        
        if anyo % 400 == 0 || (anyo % 4 == 0 && anyo % 100 != 0) {
            print("El año \(anyo) es bisiesto")
        } else {
            print("El año \(anyo) NO es bisiesto")
        }
    }
}
