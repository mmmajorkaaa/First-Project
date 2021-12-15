//
//  Patterns.swift
//  First Project
//
//  Created by Roman Prosenyuk on 10.12.2021.
//

import UIKit

class Patterns: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func TerminalCleaning(_ sender: Any) {
        for _ in 0...20 {
        print("")
        }
    }
    @IBAction func Adapter(_ sender: UIButton) {
        //вызываем метод обьекта который считает Метаболизм в метрической системе который переиспользыет под капотом Английскую систему
        person.checkBMR(calculator: BMRCalculatorAdapter(adaptee: BMRCalculator()))
    }
    
    @IBAction func Decorator(_ sender: Any) {
        print(espresso.ingredients(), espresso.cost())
        print(capuccino.ingredients(), capuccino.cost())
        print(fanasiDrink.ingredients(),fanasiDrink.cost())
        print(capuccinoWithChocolate.ingredients(), capuccino.cost())
    }
    
    @IBAction func Zamestitel(_ sender: Any) {
        lock.open()
    }
    @IBAction func Linker(_ sender: Any) {
        
        smallBox.add(component: WashingMachine())
        
        mediumBox.add(component: Computer())
        mediumBox.add(component: Speakers())
        
        bigBox.add(component: smallBox)
        bigBox.add(component: mediumBox)
        bigBox.add(component: WashingMachine())
        
        print(computer.description())
        print(smallBox.description())
        print(mediumBox.description())
        print(bigBox.description())
    }
    @IBAction func Bridge(_ sender: Any) {
        print(newBmv.car , newBmv.paice)
    }
    @IBAction func Flyweight(_ sender: Any) {
        for _ in 0..<1000 {
            let randomType = bacteriaTypes[Int(arc4random_uniform(UInt32(bacteriaTypes.count)))]
            let newBacteriaSprite = BacteriaSpriteFactory.makeBacteriaSprite(for: randomType)
            let newBacteria = Bacteria(point: .zero, size: 0.3, sprite: newBacteriaSprite)
            newBacteria.draw()
        }
        
        // второй пример сравниваем 2 обьекта ссылаются на одну или разные обекты (Приспособленецы)
        let flyColor = UIColor.rgba(1, 0, 0, 1)
        let flyColor2 = UIColor.rgba(1, 0, 0, 1)
        print(flyColor === flyColor2)
        
        
    }
    @IBAction func Facade(_ sender: Any) {
//        // так выполняются запросы без фасада (чтоб запустить машину нужно сделать много мелких однотипных запросов)
//        let mashine = Mashine()
//        let manager =  ReqestManager()
//
//        if !manager.isConnected {
//            manager.connectedToTerminal()
//        }
//
//        if manager.getStatusRequest(for: mashine) == .ready {
//            print("Машина готова к запуску")
//            manager.sendStartedRequest(for: mashine)
//        }
        
        
        // ЗАПУСК С ФАСАДОМ
        simpleInterfase.StartMashine() // - запрос на запуск машины с проверками и сложной системой спрятан в 1ой строчке
    }
    @IBAction func AbstractFactory(_ sender: Any) {
        
        // хоть классы и разных типов но обьеденены (Абстрактной фабрикой)
        chair = KitchenFactory().createChair()
        sofa = KitchenFactory().createSofa()
        table = KitchenFactory().createTable()
        
        chair = BedroomFactory().createChair()
        sofa = BedroomFactory().createSofa()
        table = BedroomFactory().createTable()
    }
    
    
    
}

