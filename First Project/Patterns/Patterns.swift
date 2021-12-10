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
    @IBAction func Adapter(_ sender: UIButton) {
        //создаем экземпляр обьекта
        let person = Person()
        //вызываем метод обьекта который считает Метаболизм в метрической системе который переиспользыет под капотом Английскую систему
        person.checkBMR(calculator: BMRCalculatorAdapter(adaptee: BMRCalculator()))
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
