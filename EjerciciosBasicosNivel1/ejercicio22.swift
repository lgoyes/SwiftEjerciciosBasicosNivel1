//
//  ejercicio22.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 12/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 22. El un almacén que venden balones se ofrecen descuentos de acuerdo a la cantidad que se compre. Si el cliente compra 3 o menos balones, no hay descuento; si compra entre 4 y 6, se da un descuento del 20%; y si se compran más de 6, se da un descuento del 25%. Haga un algoritmo que determine el valor total a pagar, dado el precio unitario de un balón y la cantidad de balones a comprar.
 */

func ejercicio22() {
    while true {
        print("Ingrese el precio unitario por balón")
        var message = readLine()!
        guard let precioBalon = Double(message) else {
            print("El texto ingresado no puede convertirse a Double")
            continue
        }
        
        print("Ingrese el numero de balones a comprar")
        message = readLine()!
        guard let numeroDeBalones = Int(message) else {
            print("El texto ingresado no puede convertirse a Int")
            continue
        }
        
        var descuento = 0.0
        if( numeroDeBalones > 6 ) {
            descuento = 0.25
        } else if (numeroDeBalones >= 4) {
            descuento = 0.20
        }
        
        let totalAPagar = Double(numeroDeBalones) * (precioBalon) * (1-descuento)
        
        print("Debe pagar \(totalAPagar) por \(numeroDeBalones). Se le hizo un descuento de \(descuento*100)%")
    }
}
