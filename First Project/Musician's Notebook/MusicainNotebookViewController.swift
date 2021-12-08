//
//  MusicainNotebookViewController.swift
//  First Project
//
//  Created by Roman Prosenyuk on 04.12.2021.
//

import UIKit

class MusicainNotebookViewController: UIViewController {
    
    let ChordBaseMaj = ["C","C#/D♭", "D","D#/E♭", "E", "F","F#/G♭", "G","G#/A♭", "A","A#/H♭", "H"]
    let ChordBaseMin = ["Cm","Cm#/Dm♭", "Dm","Dm#/Em♭", "Em", "Fm","Fm#/Gm♭", "Gm","Gm#/Am♭", "Am","Am#/Hm♭", "Hm"]
    
    var testSong = """
        Dm Dm Bb A

        1 КУПЛЕТ:
        Dm
        Люди землю поділили
        Bb A
        На частини на частини
        Комусь краще , комусь гірше-
        А земля вона ж єдина!
        Комусь ріки ,комусь гори,
        Хтось «своїм» називає море…
        Все поділене:  і де тут частина
        Для новенької людини?

        ПЕРЕД ПРИСПІВ:
        Bb F C Dm
        Але тішить серце дитяче, що Бог усе це бачить!
        І готує країну нам, яку…
        Bb F C
        Вже ніхто не поділить: і моє серце вірить
        Довіряє Христу!

        ПРИСПІВ:
        Dm Bb
        Нам не буде мало неба !
        C F
        Ми  ввійдемо всі  туди ,
        Bb Gm
        Якщо Бог в  твоєму серці
        A Dm
        Знайде місце на Землі!

        2 КУПЛЕТ:
        Люди ,коли ви забули
        Що усе належить Богу?
        Все що під небом, що було й буде
        Все від Нього, все від Того,
        Хто посилає сонця світло
        На добрих і злих : на багатих і бідних.
        Він не ділить, а хто ж ти людина? -
        Без дозволу Бога -  усе поділила!
        ____________________________________
        Нотки Мало неба
        Ссылка на песню: https://holychords.com/24905
"""

    
    @IBOutlet weak var Text: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Text.text = testSong
        

        
    }
    
    @IBAction func stepperAction(_ sender: UIStepper) {
        print(sender.value)
        var arrayText: [String] = []
        var text = String()

        
        for i in testSong {
            if i != " "{
                
                text += String(i)
                
            } else {
                text += "??????????"
            }
            print(text)
        }
        
    }
    

    

}
// Паттерн для замены слова
//let hord = testSong

////func sortHords ()
//vat index = 0
//for i in 0 ..< hord.count {
//
//    startString = startString
//        .replacingOccurrences(of: hord[1],  with: "!!!")
//}
//
//
//
////print(startString)
//
//
////var startString = "3, 2, 1, 2, 1, go!"
////startString = startString
////    .replacingOccurrences(of: "1", with: "one")
////    .replacingOccurrences(of: "2", with: "two")
////    .replacingOccurrences(of: "3", with: "three")
//////startString = "three, two, one, go!"
////
////print(startString)


