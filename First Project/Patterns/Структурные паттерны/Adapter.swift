//Адаптер (Adapter) — структурный шаблон проектирования, который обеспечивает совместную работу классов с несовместимыми интерфейсами.
// урок https://www.youtube.com/watch?v=ynD1s697CQc

// калькулятор для расчета метаболического индекса человека в Английской системе мер


// протокол для Английского калькулятора метаболизма
protocol BMRImperialCalculation {
    func bmr(height: Double, weight: Double, age: Int) -> Int
}

// Калькулятор в Английской системе мер который реалезует протокол
struct BMRCalculator : BMRImperialCalculation {
    func bmr(height: Double, weight: Double, age: Int) -> Int {
        return Int(66 + (6.2 * weight) + (12.7 * height) - (6.76 * Double(age)))
    }
}

// протокол для Метрической калькулятора метаболизма
protocol BMRMetricCalculation {
    func metricBMR(height: Double, weight: Double, age: Int) -> String
}


// Калькулятор в Метрической системе мер!!! который переиспользует Английскую систему мер
struct BMRCalculatorAdapter: BMRMetricCalculation {
    
    // создаем адаптер в Английской системе
    private var adaptee: BMRImperialCalculation
    
    //заполняем данными для инициализации Английского калькулятора
    init(adaptee: BMRImperialCalculation) {
        self.adaptee = adaptee
    }
    
    //реализуем обязательный протакол для метричной системы мер
    func metricBMR(height: Double, weight: Double, age: Int) -> String {
        
        // мы конвертируем англйскую систему в метрическую (возрость этих системах одинаковый)
       let eHeight = height * 3.28084
       let eWeight = weight * 2.20462
       let result = adaptee.bmr(height: eHeight, weight: eWeight, age: age)
        
        // условие если ответ > 1000
                return "BMR is \(result). \(result > 1000 ? "High." : "Low.")"
    }
}

// создаем клиента который будет вычеслять свой уровень метаболизма
struct Person {
    func checkBMR(calculator : BMRMetricCalculation){
        
        // распечатываем результат метрического калькулятора
        print(calculator.metricBMR(height: 1.84, weight: 74, age: 26))
    }
}

//создаем и вызываем нашего пользователя
//let person = Person()
//person.checkBMR(calculator: BMRCalculatorAdapter(adaptee: BMRCalculator()))



