//
//  ejercicio29.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 14/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 En un experimento se deben tomar medidas de temperatura cada hora por un día completo. Haga
 un algoritmo que lea las medidas y determine la temperatura más alta, la más baja y la promedio.
 */

func ejercicio29() {
    var muestras: [Int] = []
    while muestras.count < 2 {
        print("Ingrese la temperatura de la hora \(muestras.count) ")
        let message = readLine()!
        guard let temperatura = Int(message) else {
            print("El texto ingresado no puede convertirse a Int")
            return
        }
        
        muestras.append(temperatura)
    }
    
    guard let maxTemperatura = muestras.max() else {
        print("Error calculando el maximo")
        return
    }
    
    guard let minTemperatura = muestras.min() else {
        print("Error calculando el minimo")
        return
    }
    
    var sumatoria = 0
    for muestra in muestras {
        sumatoria += muestra
    }
    
    let promTemperatura = Double(sumatoria) / Double(muestras.count)
    
    print("Máximo: \(minTemperatura)")
    print("Mínimo: \(maxTemperatura)")
    print("Promedio: \(promTemperatura)")
}
