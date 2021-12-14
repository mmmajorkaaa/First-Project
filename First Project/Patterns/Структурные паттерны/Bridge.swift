//
//  Bridge.swift
//  First Project
//
//  Created by Roman Prosenyuk on 13.12.2021.
//
//Мост назначение -  отделить абстракцию от ее реализации так, чтобы то и другое можно было изменять независимо.
//Полезность данного разделения появляется в случае, когда для некоторой абстракции возможно несколько реализаций. Обычно первым делом и в такой ситуации применяют наследование.
//Абстрактный класс определяет интерфейс абстракции, а его конкретные подклассы по-разному реализуют его. Но такой подход не всегда обладает достаточной гибкостью. Наследование жестко привязывает реализацию к абстракции, что затрудняет независимую модификацию, расширение и повторное использование абстракции и ее реализации.

//https://www.youtube.com/watch?v=EOkWEv8rXHk

import Foundation

// Protocol for abstraction clases
protocol NewTypeCar {
    var breakPedal: Bool {get set} // педаль тормаза
    var gasPedal: Bool {get set} // педаль газа
    var steringWheel: Bool {get set} // руль
    }

// create abstrakts classes and realization protocol
class NewTrack: NewTypeCar {
    var breakPedal: Bool
    var gasPedal: Bool
    var steringWheel: Bool
    
    init(breakPedal: Bool, gasPedal: Bool, steringWheel: Bool) {
        self.breakPedal = breakPedal
        self.gasPedal = gasPedal
        self.steringWheel = steringWheel
    }
}
// abstrakts classes NewPasanger
class NewPasanger: NewTypeCar{
    var breakPedal: Bool
    var gasPedal: Bool
    var steringWheel: Bool
    
    init(breakPedal: Bool, gasPedal: Bool, steringWheel: Bool) {
        self.breakPedal = breakPedal
        self.gasPedal = gasPedal
        self.steringWheel = steringWheel
    }
}
// abstrakts classes NewBus
class NewBus: NewTypeCar{
    var breakPedal: Bool
    var gasPedal: Bool
    var steringWheel: Bool
    
    init(breakPedal: Bool, gasPedal: Bool, steringWheel: Bool) {
        self.breakPedal = breakPedal
        self.gasPedal = gasPedal
        self.steringWheel = steringWheel
    }
}

// CREATE RAELIZATION

// create Protocol for realization classes
protocol Price {
    var car: NewTypeCar {get set}
    var paice: Double {get set}
}

//realization
class BMV: Price {
    var car: NewTypeCar
    var paice: Double
    
    init(car: NewTypeCar, paice: Double) {
        self.car = car
        self.paice = paice
    }
}

class Mercedes: Price {
    var car: NewTypeCar
    var paice: Double
    
    init(car: NewTypeCar, paice: Double) {
        self.car = car
        self.paice = paice
    }
}

class Volkswagen: Price {
    var car: NewTypeCar
    var paice: Double
    
    init(car: NewTypeCar, paice: Double) {
        self.car = car
        self.paice = paice
    }
}

let newBmv = BMV(car: NewPasanger(breakPedal: true, gasPedal: true, steringWheel: true), paice: 50000)
