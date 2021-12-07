//
//  VokalViewController.swift
//  First Project
//
//  Created by Roman Prosenyuk on 05.12.2021.
//

import UIKit

class VokalViewController: UIViewController {
    
    @IBOutlet weak var VolumeLable: UILabel!
    let Volume = ["p", "mp", "mF", "F", "FF", "<", ">", ""]
    
    @IBOutlet weak var VibratoLable: UILabel!
    let Vibrato = ["------", "---~~~", "~~~---", "~~~~~~", ""]
    
    @IBOutlet weak var MoodLable: UILabel!
    
    let Mood = ["Грустно", "Весело", "Задумчиво", "Нежно", "Истерика", "Сдержанно", ""]
    
    @IBOutlet weak var ExtentLable: UILabel!
    
    let Extent = ["Отрывисто", "", "Легато"]
    
    
    @IBOutlet weak var StyleLable: UILabel!
    let Style = ["Расщепление", "Рок", "Классика", "Глиссандо", "джаз", "народное", "эстрадное", "Оперное", ""]
    
    @IBOutlet weak var RegistrLable: UILabel!
    let Register = ["Фальцет", "Головной", "Грудной", "Живот", ""]

    override func viewDidLoad() {
        super.viewDidLoad()

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
    @IBAction func RandomIntonation(_ sender: Any) {
        VolumeLable.text = Volume.randomElement()
        VibratoLable.text = Vibrato.randomElement()
        
        MoodLable.text = Mood.randomElement()
        
        ExtentLable.text = Extent.randomElement()
        
        StyleLable.text = Style.randomElement()
        
        RegistrLable.text = Register.randomElement()
        
        
        
        
        
        
    }
    
}
