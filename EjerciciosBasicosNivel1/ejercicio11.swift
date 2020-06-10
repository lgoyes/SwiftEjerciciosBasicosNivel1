//
//  ejercicio11.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 9/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

/*:
 11. En una evaluación, se calcula el puntaje de cada estudiante según el número de respuestas correctas, incorrectas y en blanco.
    Por cada respuesta correcta, tendrá 5 puntos, respuestas incorrectas tendrá -2 y respuestas en blanco tendrá -1.
    Pida al usuario cada una de estas variables como entradas de consola.
*/

func ejercicio11() {
    var numeroRespuestasCorrectas = 0
    var numeroRespuestasIncorrectas = 0
    var numeroRespuestasEnBlanco = 0
    let valorCorrecto = 5
    let valorIncorrecto = -2
    let valorBlanco = -1

    print ("Por favor ingrese el numero de respuestas correctas")
    if let string = readLine() {
        if let number = Int(string) {
            numeroRespuestasCorrectas = number
        } else {
            print("Entrada invalida")
            return
        }
    }
    
    print ("Por favor ingrese el numero de respuestas incorrectas")
    if let string = readLine() {
        if let number = Int(string) {
            numeroRespuestasIncorrectas = number
        } else {
            print("Entrada invalida")
            return
        }
    }
    
    print ("Por favor ingrese el numero de respuestas en blanco")
    if let string = readLine() {
        if let number = Int(string) {
            numeroRespuestasEnBlanco = number
        } else {
            print("Entrada invalida")
            return
        }
    }
    
    let resultadoTotal = numeroRespuestasCorrectas * valorCorrecto + numeroRespuestasIncorrectas * valorIncorrecto + numeroRespuestasEnBlanco * valorBlanco
    
    print("El puntaje final es \(resultadoTotal)")
}
