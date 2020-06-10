//
//  ejercicio8.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 10/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 Pida al usuario un número decimal cualquiera.
 Si el cuadrado del numero es mayor que 1, imprima "El numero X puede crecer"; De lo contrario, imprima "el numero X ya no crece más, donde X es el número expresado con solo 2 cifras decimales.
 
 Extra: Modifique el programa para que repita este procedimiento infinitas veces (cómo se hace un ciclo infinito?)
 */

func ejercicio8() {
    var numero = 0.0
    
    while(true){
        print("Buenos dias. Ingrese un numero decimal:")
        if let string = readLine() {
            if let number = Double(string) {
                numero = number
            }
        }
        
        let numeroRedondeado = String(format: "%.2f", numero)
        
        if ( pow(numero, 2) > 1 ) {
            print("El número \(numeroRedondeado) puede crecer")
        } else {
            print("El número \(numeroRedondeado) ya no crece más")
        }
    }
}
