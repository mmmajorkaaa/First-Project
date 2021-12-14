//
//  Linker.swift
//  First Project
//
//  Created by Roman Prosenyuk on 13.12.2021.
//
//Компоновщик (Composite) — структурный шаблон проектирования, который позволяет сгруппировать объекты в древовидную структуру и работать с ними единым образом.
//https://www.youtube.com/watch?v=3NMDjMATrG8

import Foundation

// протокол который потдерживают все компоненты нашего компановщика
protocol Component {
    // id component
    var id: UInt32 {get}
    
    // name component or name stack components
    func description() -> String
}


// component washing mashine
final class WashingMachine: Component {
    
    // realization protocol
    
    var id = arc4random_uniform(100)    // random id 0...100
    
    func description() -> String {
        return "WashingMachine - \(id)"
    }
}
// copipast :)
final class Computer: Component {
    
    // realization protocol
    
    var id = arc4random_uniform(100)    // random id 0...100
    
    func description() -> String {
        return "Computer - \(id)"
    }
}

// copipast :)
final class Speakers: Component {
    
    // realization protocol
    
    var id = arc4random_uniform(100)    // random id 0...100
    
    func description() -> String {
        return "Speakers - \(id)"
    }
}


// stack components
final class Composite: Component {

    
    // appay components
    private var components: [Component] = []
    
    // metod append components in array
    func add(component : Component)  {
        components.append(component)
    }
    
    // remuve component by id
    func remuve(component : Component) {
        
        // присваем переменной компьютер пропертис (если в стаке есть этот id то с массива удаляем элимент с таким ID )

                
        // перебор через  фор ин
//        for  i in components {
//            if i.id == component.id{
//                let i = i.id
//                components.remove(at: Int(i))
//            }
//        }
        // перебор через  с помощюь операторов
        if let index = components.firstIndex(where: {$0.id == component.id}){
            components.remove(at: index)
        }
    }

    // realization protocol
    
    var id = arc4random_uniform(100)    // random id 0...100
    
    func description() -> String {
        // для массивов всех элементов которые в нем содержатся  выводим строку с описанием этих элиментов (если есть контейнер - коробка и внутри у нее есть другие продукты то он пробежится по массиву этих элиментов и для каждого вызавит метод дескрпшен)
            
        //Перебор через ФОР ИН
//        var test = ""
//       for i in components {test = i.description()}
//        return test
        
        // Перебор с помощью
        return components.reduce("", {"\($0)\($1.description()) "})
    }
}


// опишем несколько обьектов
let computer = Computer()
let smallBox = Composite()
let mediumBox = Composite()
let bigBox = Composite()







