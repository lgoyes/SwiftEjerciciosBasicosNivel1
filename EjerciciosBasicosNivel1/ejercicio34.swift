//
//  ejercicio34.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 16/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 Haga un algoritmo que muestre los primeros N términos de la serie: 10, 11, 20, 21, 30, 31, 40, 41, 50, 51...
 
 Ayuda: Note que en cada posicion impar (1, 3, 5, 7, ...) se agrega 10 al numero de la serie antes acumulado; y que si la posicion es par, se agrega un 1 más, que no aparece en la siguiente posición.
 */

func ejercicio34() {
    var serie = [Int]()
    var mensaje = ""
    while true {
        serie = []
        
        print("Ingrese el número N de elementos que quiere imprimir de la serie:")
        mensaje = readLine()!
        guard let numeroN = Int(mensaje) else {
            print("El texto ingresado no puede convertirse a Int")
            return
        }
        
        var numeroGrande = 0
        for i in (1...numeroN) {
            var nuevoNumeroSerie = 0
            if i % 2 == 1 {
                nuevoNumeroSerie += 0
                numeroGrande += 10
            } else {
                nuevoNumeroSerie += 1
            }
            nuevoNumeroSerie += numeroGrande
            
            serie.append(nuevoNumeroSerie)
        }
        
        print(serie.map{String($0)}.joined(separator: ", "))
    }
}
