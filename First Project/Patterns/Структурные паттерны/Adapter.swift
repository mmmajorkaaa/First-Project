//Адаптер (Adapter) — структурный шаблон проектирования, который обеспечивает совместную работу классов с несовместимыми интерфейсами.

// Создаем калькулятор которое считает метаболизм в английской системе и адаптор который сможет реализовать этот калькулятор но в метрической системе

//https://www.youtube.com/watch?v=ynD1s697CQc
import Foundation

// протокол который должны потдерживать все классы
protocol BMRImperialCalculation {
    func bmr(height: Double, weight: Double, age: Int) -> Int
}

// Калькуллятор метаболизма в Английской системе исчесления
struct BMRCalculator: BMRImperialCalculation {
    func bmr(height: Double, weight: Double, age: Int) -> Int {
        return Int(66 + (6.2 * weight) + (12.7 * height) - (6.76 * Double(age)))
    }
}

// протокол в метрической системе
protocol BMRMetricCalculation {
    func metricBMR(height: Double, weight: Double, age: Int) -> String
}
// калькулятор в метрической системе
struct BMRCalculatorAdapter: BMRMetricCalculation {
    
//    создаем экземпляр адаптера
    private var adaptee: BMRImperialCalculation
    
    init(adaptee: BMRImperialCalculation) {
        self.adaptee = adaptee
    }
    
    //  пересчитываем с английской системы в метрическую
    func metricBMR(height: Double, weight: Double, age: Int) -> String {
        let eHeight = height * 3.28084
        let eWeight = weight * 2.20462
        let result = adaptee.bmr(height: eHeight, weight: eWeight, age: age)
        return "BMR is \(result). \(result > 1000 ? "High." : "Low.")"
    }
}

//создаем человека
struct Person {
    func checkBMR(calculator: BMRMetricCalculation) {
        print(calculator.metricBMR(height: 1.84, weight: 73, age: 26))
    }
}
// создаем экземпляр человека
let person = Person()


