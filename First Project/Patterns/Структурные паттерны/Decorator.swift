//Декоратор (Decorator) — структурный шаблон проектирования, который позволяет динамически добавлять объектам дополнительное поведение.

// https://www.youtube.com/watch?v=4sRYRw-ySRQ

//Создаем кофе машину в которую будем добавлять кофе используя базовый вид кофе ЕСПРЕССО и с помощью декоратора добавлять ингридиент


// протокол который который долны реализовать все кофейные напитки
protocol Coffee {
    func cost ()-> Double
    func ingredients ()-> String
    }

// базовый кофейный напиток который подписан на протокол
final class Espresso: Coffee{
    
    // реализуем протокол
    
    func cost() -> Double {
        return 100
    }
    
    func ingredients() -> String {
        return "Espresso"
    }
}

class CoffeDecorator: Coffee {
 
    //  Экземпляр протокола кофе
    private var coffee: Coffee
    
    // инициализировать наш экземпляр данными которые человек запишит в инициализаторе
    init(сoffee: Coffee) {
            self.coffee = сoffee
        }
    
    // передаем в инициализатор протокола информацию с ранее созданного экземпляра
    func cost() -> Double {
        return coffee.cost()
    }
    
    func ingredients() -> String {
        return coffee.ingredients()
    }
}

// (декорируем наше кофе) создаем добавочные ингридиенты (подисанны на сласс Кофедекоратор )
final class Whip: CoffeDecorator {
    
    // перегружаем родительскую функцю(CoffeDecorator)
    
    // ингредиенты
        override func ingredients() -> String {
            return super.ingredients() + ", Whip"
        }
    
    // стоимость
    override func cost() -> Double {
            return super.cost() + 30
        }

}

final class Milc: CoffeDecorator {
    
    // перегружаем родительскую функцю(CoffeDecorator)
    // ингредиенты
        override func ingredients() -> String {
            return super.ingredients() + ", Milc"
        }
    //стоимость
    override func cost() -> Double {
            return super.cost() + 20
        }

}
final class Chocolate: CoffeDecorator {
    
    // перегружаем родительскую функцю(CoffeDecorator)
    
    // ингредиенты
        override func ingredients() -> String {
            return super.ingredients() + ", Chocolate"
        }
    
    //стоимость
    override func cost() -> Double {
            return super.cost() + 50
        }

}

//  создаем эспрессо
let espresso = Espresso()
// сливки + Эспрессо
let capuccino = Whip(сoffee: Espresso())
// молоко, сливки, шоколад, Эспрессо
let capuccinoWithChocolate = Milc(сoffee: Whip(сoffee: Chocolate(сoffee: Espresso())))
// накидали всего
let fanasiDrink = Milc(сoffee: Milc(сoffee: Chocolate(сoffee: Whip(сoffee: capuccinoWithChocolate))))




//print(espresso.ingredients())
//print(espresso.cost())
//
//print(capuccino.ingredients())
//print(capuccino.cost())
//
//print(capuccinoWithChocolate.ingredients())
//print(capuccinoWithChocolate.cost())
