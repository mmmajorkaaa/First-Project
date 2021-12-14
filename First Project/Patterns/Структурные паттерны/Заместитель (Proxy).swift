//
//  Заместитель (Proxy).swift
//  First Project
//
//  Created by Roman Prosenyuk on 11.12.2021.
//
//Заместитель (Proxy) — структурный шаблон проектирования, который позволяет подставлять вместо реального объекта специальный объект-заменитель, который имеет такой же интерфейс и управляет доступом к нему.

import Foundation

//протокол
protocol LockingSystem {
    func open()
    func close()
}

//клас который описывает замок и выводит функцию закрытия и открытия
final class Lock: LockingSystem {

    func open() {
        print("Unlock")
    }
    func close() {
            print("Lock")
        }
}


// описываем посредника (Заместителя) который контралирует замок и решает кто открывает а кто нет
final class ProxyLock: LockingSystem {

    private var lock: Lock = Lock()
// тут можно прописать условия в каких случаях замок будет открыт или закрыи (например если пользователь авторизирован замок открывать)
    func open() {
        
        print("Additional operations...")
        lock.open()
    }

    func close() {
        lock.close()
    }
}

// экземпляр заместителя
let lock = ProxyLock()
//lock.open()
