//
//  ejercicio14.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 9/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*:
 14. Escriba un algoritmo que permita calcular la hipotenusa de un triángulo rectángulo utilizando el teorema de Pitágoras.
*/

func ejercicio14() {
    var cateto1 = 0.0
    var cateto2 = 0.0
    
    print ("Por favor ingrese la longitud del cateto 1 del triángulo")
    if let string = readLine() {
        if let number = Double(string) {
            cateto1 = number
        } else {
            print("Entrada invalida")
            return
        }
    }
    
    print ("Por favor ingrese la longitud del cateto 2 del triángulo")
    if let string = readLine() {
        if let number = Double(string) {
            cateto2 = number
        } else {
            print("Entrada invalida")
            return
        }
    }
    
    let hipotenusa = sqrt(cateto1*cateto1 + cateto2*cateto2)
    
    print("La hipotenusa del triángulo es \(hipotenusa)")
}
