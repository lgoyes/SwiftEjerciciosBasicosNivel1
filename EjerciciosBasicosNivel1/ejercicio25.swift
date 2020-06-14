//
//  ejercicio25.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 14/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 Extienda el algoritmo del año bisiesto para que, en caso de que el año no sea bisiesto, diga cuál sería el siguiente año bisiesto.
 */

func ejercicio25() {
    while true {
        print("Ingrese el año")
        let message = readLine()!
        guard let anyo = Int(message) else {
            print("El texto ingresado no puede convertirse a Int")
            continue
        }
        
        let modulo4 = anyo % 4
        let modulo100 = anyo % 100
        let modulo400 = anyo % 400
        
        if modulo400 == 0 || (modulo4 == 0 && modulo100 != 0) {
            print("El año \(anyo) es bisiesto")
        } else {
            print("El año \(anyo) NO es bisiesto")
            
            let faltante400 = 400 - modulo400
            
            var faltante4 = 4 - modulo4
            var faltante100 = 100 - modulo100
            
            if (faltante4 == faltante100) {
                faltante4 += 4
                faltante100 += 100
            }
            
            let anyosFaltantesParaBisiesto = min(faltante4, faltante400)
            
            let siguienteBisiesto = anyo + anyosFaltantesParaBisiesto
            
            print("El proximo año bisiesto será \(siguienteBisiesto)")
        }
    }
}
