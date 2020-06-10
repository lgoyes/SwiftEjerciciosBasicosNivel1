//
//  ejercicio9.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 10/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
 Escriba un programa para adivinar un numero del 1 al 10.
 Pasos:
    1. Genere un numero aleatorio del 1 al 10
    2. Pida al usuario que ingrese un número
    3. Compare el numero aleatorio, con el numero ingresado con el usuario.
        En caso de acertar imprima en pantalla: "Dio en el blanco!"
        En caso de fallar imprima en pantalla el mensaje que correspoda:
            1. Si la diferencia entre el numero ingresado y el numero aleatorio es 1 -> "Se pelo por nada"
            2. Si la diferencia es mayor que 1 y menor que 5 -> "Mejor suerte para la proxima"
            3. Si la diferencia es mayor o igual que 5 -> "Adivinar no es lo suyo. Busque otra profesion"
        Imprima en pantalla el numero aleatorio.
 
 Bonus:
    Convierta este programa en un juego con puntos, que se repita indefinidamente (ciclo infinito).
    Si acertó, sume 100 puntos.
    Si fallo por 1, sume 50 puntos.
    Si fallo por menos de 5, sume 10 puntos.
    Si la diferencia es mayor o igual que 5, reste 10 puntos.
    Imprima el puntaje acumulado en cada turno.
    + Tenga en cuenta que la diferencia entre el numero ingresado, y el numero aleatorio, puede ser positiva o negativa. Por eso, averigüe como calcular el valor absoluto de un numero en swift.
 */

func ejercicio9() {
    var numeroAleatorio = 0
    var numeroIngresado = 0
    var puntaje = 0
    print("Bienvenido")
    while( true ) {
        numeroAleatorio = Int.random(in: (1...10))
        
        print("Ingrese un numero:")
        if let string = readLine() {
            if let number = Int(string) {
                numeroIngresado = number
            }
        }
        
        let diferencia = abs(numeroAleatorio - numeroIngresado)
        
        if diferencia == 0 {
            puntaje += 100
            print("Dio en el blanco!")
        } else if diferencia == 1 {
            puntaje += 50
            print("Se pelo por nada. El numero era \(numeroAleatorio)")
        } else if diferencia < 5 {
            puntaje += 10
            print("Mejor suerte para la proxima. El numero era \(numeroAleatorio)")
        } else {
            puntaje -= 10
            print( "Adivinar no es lo suyo. Busque otra profesion. El numero era \(numeroAleatorio)" )
        }
        
        print("El puntaje acumulado hasta ahora es \(puntaje)")
    }
}
