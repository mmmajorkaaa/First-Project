//
//  AbstractFactory.swift
//  First Project
//
//  Created by Roman Prosenyuk on 15.12.2021.
//
//Паттерн "Абстрактная фабрика" (Abstract Factory) предоставляет интерфейс для создания семейств взаимосвязанных объектов с определенными интерфейсами без указания конкретных типов данных объектов.
//https://www.youtube.com/watch?v=kjQGfFV_lM0&t=48s
// создадим 2 группы обьектов которые будут обьеденены абстрактной фабрикой (фабрика будет обьединять не совместимые классы)

import Foundation

//протокол стула
protocol ChairProtocol {
    var name : String {get}
    var type: String {get}
}
//протокол кровати
protocol  SofaProtocol {
    var name : String {get}
    var type: String {get}
}
//протокол стола
protocol  TableProtocol {
    var name : String {get}
    var type: String {get}
}

//Набор класов (Мебель для СПАЛЬНОЙ КОМНАТЫ)

// описываем стул для спальни
class ChairBedroom: ChairProtocol {
    var name: String = "Стул"
    
    var type: String = "Стул для спальни"
}

//описываем кофейный стол
class CofeeTable: TableProtocol {
    var name: String = "Cтол"
    
    var type: String =  "Кофейный стол"
}

//описываем диван
class  SofaBedroom: SofaProtocol {
    var name: String = "Диван"
    
    var type: String =  "Диван для спальни"
}

//Набор класов (Мебель для КУХНИ)

// описываем стул для кухни
class ChairKitchen: ChairProtocol {
    var name: String = "Стул"
    
    var type: String = "Стул для кухни"
}

//описываем кофейный стол для кухни
class TableKitchen: TableProtocol {
    var name: String = "Cтол"
    
    var type: String =  "Кофейный стол для кухни"
}

//описываем диван
class  SofaKitchen: SofaProtocol {
    var name: String = "Диван"
    
    var type: String =  "Диван для кухни"
}

// РЕАЛИЗУЕМ АБСТРАКТНУЮ ФАБРИКУ

// протокол для  Абстрактной фабрики вазвращаем тип
protocol AbstractFactoryProtocol {
    func createChair() -> ChairProtocol
    func createSofa() -> SofaProtocol
    func createTable() -> TableProtocol
}


// в Классе Factory  привязываем конкретным классам и подписываемся на протокол
class BedroomFactory: AbstractFactoryProtocol {
    
    func createSofa() -> SofaProtocol {
        print("Кровать для спальни создана")
        return SofaBedroom()
    }
    
    func createTable() -> TableProtocol {
        print("Стол для спальни создан")
        return CofeeTable()
    }
    
    func createChair() -> ChairProtocol {
        print("Стул для спальни создан")
        return ChairBedroom()
    }
}


// в Классе Factory  привязываем конкретным классам и подписываемся на протокол
class KitchenFactory: AbstractFactoryProtocol {
    
    func createChair() -> ChairProtocol {
        print("Стул для кухни создан")
        return ChairKitchen()
    }
    
    func createSofa() -> SofaProtocol {
        print("Кровать для кухни создана")
        return SofaKitchen()
    }
    
    func createTable() -> TableProtocol {
        print("Стол для кухни создан")
        return TableKitchen()
    }

}

// создаем экземпляры ТИПОВ!!!
var chair: ChairProtocol?
var table: TableProtocol?
var sofa: SofaProtocol?


//var tect: AbstractFactoryProtocol = KitchenFactory()
// далее в кнопке

 



