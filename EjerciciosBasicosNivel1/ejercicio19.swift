//
//  ejercicio19.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 11/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

func ejercicio19() {
    print("Ingrese la hora de irse a la cama: ")
    
    var message = readLine()!
    
    guard let horaDeIrseALaCama = Double(message) else {
        print("El texto ingresado no puede convertirse a Double")
        return
    }
    
    print("Ingrese la hora de levantada: ")
    
    message = readLine()!
    
    guard var horaDeLevantada = Double(message) else {
        print("El texto ingresado no puede convertirse a Double")
        return
    }
    
    if (horaDeLevantada < horaDeIrseALaCama) {
        horaDeLevantada += 24
    }
    
    let demoraEnDormir = 0.5
    
    var horasDeSuenyo = horaDeLevantada - horaDeIrseALaCama - demoraEnDormir
    
    var seVaADespertarDuranteLaNoche = false
    
    let random = Int.random(in: (1...10))
    if (random < 3) {
        seVaADespertarDuranteLaNoche = true
        horasDeSuenyo -= 2
    }

    if (seVaADespertarDuranteLaNoche) {
        print("La persona se va a despertar durante la noche y va a dormir \(horasDeSuenyo)")
    } else {
        print("La persona no se va a despertar, y por eso dormirá \(horasDeSuenyo)")
    }
}
