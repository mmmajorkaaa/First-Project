//
//  WordView.swift
//  First Project
//
//  Created by Roman Prosenyuk on 04.12.2021.
//

import UIKit

class WordView: UIViewController {
    @IBOutlet weak var TimerLable: UILabel!
    @IBOutlet weak var WhatGame: UISegmentedControl!
    
    @IBOutlet weak var trueWordLable: UILabel!
    var countTrue = 0
    @IBOutlet weak var falseWordLable: UILabel!
    var countFalse = 0
    let BDWord = [ "Звездное небо", "Страх", "Приготовления", "Малыш", "Путешественник", "Царь", "Трон",
                   "Богоявление",
                   "Календарь",
                   "ожидание",
                   "Радость",
                   "пение",
                  "Поклонение",
                   "карта",
                   "наклейки",
                   "Имбирное печенье",
                   "счастье",
                   "елизавета",
                  "размышления",
                   "какао",
                   "молитва",
                   "грех",
                   "прощение",
                   "иисус",
                  "Гнев",
                   "Дары",
                   "Путь",
                   "Астрономия",
                   "Ночь",
                   "Костёр",
                  "Елизавета",
                   "Немой человек",
                   "Иерусалим",
                   "Пророчество",
                   "Созвездия",
                   "Овцы",
                  "Чудо",

                  "Осел",
                   "Перепись",
                   "Дары",
                   "Пастухи",
                   "Хор ангелов",
                  "Пустыня",
                   "Израиль",
                   "Мое сердце",
                   "Изменения",
                   "Удивительное",
                   "Песня",
    "ясли",
    "город",
    "Иосиф",
    "дорога",
    "дома",
    "двери",
   "пещера",
    "звезда",
    "Иисус",
    "сено",
    "пеленки",
    "беременность",
   "Август кесарь",

   "Адвент",

   "Мир",

   "Указ",

   "Праздник",

   "Рождение",
    "Ребёнка",
   "Симеон",
    "Свечи",
    "Молитва",
    "Храм",
    "Пророк",
    "Украшения дома",
   "Радость",
    "Путешественники",
    "Волхвы",
    "Верблюды",
    "Карта",
    "Евангелия",
   "Библия",
    "Рождество",
    "ангел",
    "мудрецы",
    "Мария",
    "имя",
   "Видение",
    "Сон",
    "Вифлеем",
    "Сердце",
    "Хитрость",
    "Ирод",
   "Верблюды",
    "Песок",
    "Пустыня",
    "Подарки",
    "Поклонение", "Рождественские",
   "гимны"]
    
    
    let Emotions = ["радость",
                    "удивление",
                    "печаль",
                    "гнев",
                    "страх",
                    "Удовольствие",
                    "Интерес",
                    "Удивление",
                    "Горе",
                    "Гнев",
                    "Страх",
                    "Отвращение",
                    "Стыд"]
    
    let BibleCharacters = [ "Адам",
                             "Каин",
                             "Енох",
                             "Ной",
                             "Нимрод",
                             "Мелхиседек",
                             "Авраам",
                             "Лот",
                             "Агарь",
                             "Исаак",
                             "Исав",
                             "Иаков",
                             "Фамарь",
                             "Иосиф",
                           "Моисей",
                             "Аарон",
                             "Валаам",
                             "Иисус Навин",
                           
                             "Девора",
                             "Гедеон",
                             "Авимелех",
                             "Иеффай",
                             "Самсон",
                             "Руфь",
                         
                             "Самуил",
                             "Саул",
                             "Давид",
                             "Вирсавия",
                             "Авессалом",
                             "Соломон",
                             "Царица Савская",
                             "Ровоам",
                             "Иеровоам",
                             "Ахав",
                             "Илия",
                             "Иезавель",
                             "Елисей",
                             "Ииуй",
                             "Иоас",
                             "Амос",
                             "Иона",
                             "Осия",
                             "Исаия",
                             "Езекия",
                             "Синахериб",
                             "Манассия",
                             "Иосия",
                             "Иеремия",
                            
                             "Иезекииль",
                             "Даниил",
                             "Сусанна",
                             "Зоровавель",
                             "Есфирь",
                             "Неемия",
                             "Ездра",
                          
                             "Иов",
                             "Суламифь",
                             "Товия",
                             "Иудифь",
                          
                             "Ирод",
                             "Мария",
                             "Симеон",
                             "Захария",
                            " Иоанн Предтеча",
                             "Пилат",
                             "Иисус",
                             "Иуда Искариот",
                             "Никодим",
                             "Иосиф Аримафейский",
                             "Мария Магдалина",
                             "Ирод Агриппа",
                             "Пётр",
                             "Сапфира",
                             "Матфей",
                             "Стефан",
                             "Симон Маг",
                             "Марк",
                             "Павел",
                             "Анания",
                             "Лука",
                             "Варнава",
                             "Тимофей",
                             "Дионисий Ареопагит",
                             "Фома",
                             "Андрей",
                             "Филипп",
                             "Варфоломей",
                             "Иоанн"]
    
    
    @IBOutlet weak var WordLeable: UILabel!
    
    
    /// Cоздаем таймер
        var counter = 0
        var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        timer = Timer()
        
      
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func WordRandomButton(_ sender: UIButton) {
        
        switch WhatGame.selectedSegmentIndex {
        case 0 :
            WordLeable.text = BDWord.randomElement()
        case 1 :
            WordLeable.text = Emotions.randomElement()
        case 2 :
            WordLeable.text = BibleCharacters.randomElement()
        default:
            return
        }
        
        
        
        
        // создаем таймер
        if counter == 0 {
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
            
        }
        if counter > 0{
            countTrue += 1
            trueWordLable.text = String(countTrue)
        }
        
       
        

    }
    @IBAction func WordFalseButton(_ sender: Any) {
        if counter > 0{
        countFalse += 1
        falseWordLable.text = String(countFalse)
        }
    }
    @objc func timerAction() {
       
        if counter < 60 {

            counter += 1
         TimerLable.text = "\(counter)"
        } else {
            TimerLable.text = "STOP"
            counter = 0
            timer.invalidate()

        }
            
        }
    


}

