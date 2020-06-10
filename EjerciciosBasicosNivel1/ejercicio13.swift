//
//  ejercicio13.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 9/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*:
 13. Desarrolle un algoritmo que permita calcular el volumen y el area superficial de un cubo
*/

func ejercicio13() {
    var longitudLadoCubo = 0.0
    var areaCubo = 0.0
    var volumenCubo = 0.0
    
    print ("Por favor ingrese la longitud de un lado del cubo")
    if let string = readLine() {
        if let number = Double(string) {
            longitudLadoCubo = number
        } else {
            print("Entrada invalida")
            return
        }
    }
    
    volumenCubo = pow(longitudLadoCubo, 3)
    areaCubo = pow(longitudLadoCubo, 2) * 6
    
    print("El area superficial del cubo es \(areaCubo)")
    print("El volumen del cubo es \(volumenCubo)")
}
