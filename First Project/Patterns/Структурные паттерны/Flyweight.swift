//
//  Flyweight.swift
//  First Project
//
//  Created by Roman Prosenyuk on 13.12.2021.
//Приспособленец (Flyweight) — структурный шаблон проектирования, который позволяет вынести и переиспользовать общее состояние для большого количества похожих объектов.
//https://www.youtube.com/watch?v=4gqDMYsi29M

import Foundation
import UIKit


// enum Type  bacterias
enum BacteriaType: String {
    case cocci
    case bacilli
    case spirilla
}

// sprite cacteria
final class BacteriaSprite {
    let color: UIColor
    let image: UIImage
    let type: BacteriaType
    
    init(color: UIColor, image: UIImage, type: BacteriaType) {
        self.image = image
        self.color = color
        self.type = type
    }
    
    // coardenat for bacterias (for sprite)
    func draw(at point: CGPoint) {
           let address = Unmanaged<BacteriaSprite>
               .passUnretained(self).toOpaque()
           print("Draw new bacteria of type \(type.rawValue.capitalized) with sprite object \(address)")
       }
    
}

//  с помощью словаря привязваем тибы бактерий к их спрайтам
final class BacteriaSpriteFactory {
    static private var sprites: [BacteriaType: BacteriaSprite] =  [:] {
        didSet{ // когда будем чтото обновлять мы будем выводить строчку
            print("Amount of sprite has changet tu \(sprites.count)")
        }
    }

// парсим словарь
static func makeBacteriaSprite (for type: BacteriaType) -> BacteriaSprite{
    
    // проверяем на нил
    if let sprite = sprites[type] {
        return sprite
    } else {
        // если спрайт не найден создаем новый спрайт
        var newSprite: BacteriaSprite
        
        // в свиче перебираем бактерии и присваиваем им цвет, картинку, тип
                   switch type {
                   case .cocci: newSprite = BacteriaSprite(color: .red, image: UIImage(), type: type)
                   case .bacilli: newSprite = BacteriaSprite(color: .green, image: UIImage(), type: type)
                   case .spirilla: newSprite = BacteriaSprite(color: .blue, image: UIImage(), type: type)
                    }
        sprites[type] = newSprite
                    return newSprite
            }

        }
    }

// создаем класс бактерия с спрайтом( преспособленцем)
final class Bacteria {
    var point: CGPoint
    var size: Double
    var sprite: BacteriaSprite
    
    init(point: CGPoint, size: Double, sprite: BacteriaSprite) {
        self.point = point
        self.size = size
        self.sprite = sprite
    }
    
    func draw() {
        sprite.draw(at: point)
    }
}

let bacteriaTypes: [BacteriaType] = [.cocci, .bacilli, .spirilla]

//for _ in 0..<1000 {
//    let randomType = bacteriaTypes[Int(arc4random_uniform(UInt32(bacteriaTypes.count)))]
//    let newBacteriaSprite = BacteriaSpriteFactory.makeBacteriaSprite(for: randomType)
//    let newBacteria = Bacteria(point: .zero, size: 0.3, sprite: newBacteriaSprite)
//    newBacteria.draw()
//}




// ВТОРОЙ ПРИМЕР
//https://www.youtube.com/watch?v=ZaqRZnIT7pk
// делаем словарь цветов и будем его дергать в нужный для нас случаях
// делаем через разширение класса UIcolor

extension UIColor {
    //  (dicshinari) Словарь цветов
    static var colorStore: [String: UIColor] = [:]
    
    // static и class в этом случае это одно и тоже
    class func rgba (_ red : CGFloat,
                     _ green : CGFloat,
                     _ blue: CGFloat,
                     _ alfa : CGFloat) -> UIColor {
        
        //  вытягиваем с инициализатора функции ключи и запихиваем в 1 строку
        let key = "\(red)\(green)\(blue)\(alfa)"
        
        // если такой ключ есть то эту переменую вставляем в колор
        if let color = colorStore[key] {
            return color
        }
        // если ключа нет то мы создаем цвет (инициализаторы берем у юзера)
        let color = UIColor(red: red,
                            green: green,
                            blue: blue,
                            alpha: alfa)
        
        // присваеваем colorStore наш колор
        colorStore[key] = color
        
        //        выводим наш колор
        return color
    }
}

