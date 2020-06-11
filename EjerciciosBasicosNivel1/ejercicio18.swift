//
//  ejercicio18.swift
//  EjerciciosBasicosNivel1
//
//  Created by Luis Goyes Garces on 11/06/20.
//  Copyright © 2020 Luis Goyes Garces. All rights reserved.
//

import Foundation

/*
18. Calcular el número de horas de sueño de una persona, si se ingresa la hora a la que se va a la cama, la hora a la que se va a levantar, y se tiene en cuenta que la persona se demora 30 minutos en quedarse dormida. Por facilidad, trabaje solo con horas (sin minutos) y en formato de 24 horas.
 */

func ejercicio18() {
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
    
    let horasDeSuenyo = horaDeLevantada - horaDeIrseALaCama - demoraEnDormir
    
    print("La persona va a dormir \(horasDeSuenyo) horas")
}
