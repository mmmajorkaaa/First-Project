//
//  Facade.swift
//  First Project
//
//  Created by Roman Prosenyuk on 14.12.2021.
//

//Фасад (Facade) — структурный шаблон проектирования, который предоставляет простой интерфейс к сложной системе классов, библиотеке или фреймворку.
//https://www.youtube.com/watch?v=HaA88R93yGo&t=146s

// создаем сложную машину и делаем фасад через который запуская машину интерфейс ничего не знает о внутренних процессах

import Foundation

// класс машина
final class Mashine {
    
//    перечесление для состояния машины
    enum State {
        case notRunning
        case ready
        case running
    }
    
    //private(set) -  это Трейдер EXCLUSIVE, это когда присвоить значение поля можно только внутри класса или структуры, а прочитать откуда угодно, в том числе снаружи.
    private(set) var state: State = .ready // текущее состояние машини (состояние готовности)
    
    
    // Метод запуска машины
    func startMashine() {
        print("состояние готовности...")
        state = .ready
        state = .running
        print("Машина работает")
    }
    //метод остановки машины
    func stopMashine(){
        print("Производитс остановка машины")
        state = .notRunning
        print("МАШИНА ОСТАНОВЛЕНА!")
    }
    
}
// вспомогательный обьект для различных запросов
final class ReqestManager {
    // статус моединения
    var isConnected: Bool = false
    
    func connectedToTerminal () {
        print("Cоединение с терминалом устанавливаетя...")
        isConnected = true
    }
    func disconnectedToTerminal () {
        print("Cоединение с терминалом разорвано...")
        isConnected = false
    }
    
    func getStatusRequest(for mashine: Mashine) -> Mashine.State {
        print("Отправлен запрос на получение статуса")
        return mashine.state
    }
    
    func sendStartedRequest(for mashine: Mashine)  {
        
        print("Отправляется запрос на запуск машины")
        mashine.startMashine()
    }
    func sendStopRequest(for mashine: Mashine)  {
        
        print("Отправляется запрос на остановку машины")
        mashine.stopMashine()
    }
}

//// так выполняются запросы без фасада (чтоб запустить машину нужно сделать много мелких однотипных запросов)
//let mashine = Mashine()
//let manager =  ReqestManager()
//
//if !manager.isConnected {
//    manager.connectedToTerminal()
//}
//
//if manager.getStatusRequest(for: mashine) == .ready {
//    print("Машина готова к запуску")
//    manager.sendStartedRequest(for: mashine)
//}



// CОЗДАЕМ ФАСАД И СКРЫВАЕМ В НЕМ ВСЮ РЕАЛИЗАЦИЮ

// протокол для фасада
protocol Fasade {
    func StartMashine()
    }

final class FasadeRealization: Fasade {
    func StartMashine() {
        // так выполняются запросы спрятаны в фасаде (вся логика скрывается, остается только магия)
        let mashine = Mashine()
        let manager =  ReqestManager()
        
        if !manager.isConnected {
            manager.connectedToTerminal()
        }
        
        if manager.getStatusRequest(for: mashine) == .ready {
            print("Машина готова к запуску")
            manager.sendStartedRequest(for: mashine)
        }
    }
}
    
    // создаем экземпляр фасада в котором реализован наш код
    let simpleInterfase = FasadeRealization()
//simpleInterfase.StartMashine()  - запрос на запуск машины с проверками и сложной системой спрятан в 1ой строчке


