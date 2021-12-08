//
//  File.swift
//  First Project
//
//  Created by Roman Prosenyuk on 08.12.2021.
//

import Foundation
// БД аккордовых последовательностей
class Hord {
    

    let Mag = [ "C", "C#", "D","D#", "E", "F","F#", "G","G#", "A", "A#",  "H" ]
    let Min = [ "Cm", "Cm#", "Dm","Dm#", "Em", "Fm","Fm#", "Gm","Gm#", "Am", "Am#",  "Hm" ]
    let Magb = [ "C", "D♭", "D","E♭", "E", "F","G♭", "G","A♭", "A", "H♭",  "H" ]
    let Minb = [ "Cm", "Dm♭", "Dm","Em♭", "Em", "Fm","Gm♭", "Gm","Am♭", "Am", "Hm♭",  "Hm" ]
    let MagRu = [ "До", "До#", "Ре","Ре#", "Ми", "Фа","Фа#", "Соль","Соль#", "Ля", "Ля#",  "Си" ]
    let MinRU = [ "До/m", "До/m#", "Ре/m","Ре/m#", "Ми/m", "Фа/m","Фа/m#", "Соль/m","Соль/m#", "Ля/m", "ЛЯ/m#",  "Си/m" ]
    let MagbRu = [ "До", "Ре♭", "Де","Ми♭", "Ми", "Фа","Соль♭", "Соль","Ля♭", "Ля", "Си♭",  "Си" ]
    let MinbRU = [ "Да/m", "Ре/m♭", "Ре/m","Ми/m♭", "Ми/m", "Фа/m","Соль/m♭", "Соль/m","ЛЯ/m♭", "Ля/m", "Си/m♭",  "Си/m" ]
    // Аккорды которые хорошо подходят к выбанной пользователем тональности
    var chordHarmony = [String()]
    
    // Паралельные аккорды мажорности/минорности которую указал пользователь
    var parallelTonality = [String()]
    
    // все аккорды мажорности/минорности которую указал пользователь
    var arrayHord = [String()]
    
    func Key (hord : String){

        for i in 0..<Mag.count {
            if hord == Mag[i]{
                arrayHord = Mag
                parallelTonality = Min
                chordHarmony.append(Mag[i])
            } else if hord == Min[i]{
                arrayHord = Min
                parallelTonality = Mag
            } else if hord == Magb[i]{
                arrayHord = Magb
                parallelTonality = Minb
            } else if hord == Minb[i]{
                arrayHord = Minb
                parallelTonality = Magb
            } else if hord == MagRu[i]{
                arrayHord = MagRu
                parallelTonality = MinRU
            }else if hord == MinRU[i]{
                arrayHord = MinRU
                parallelTonality = MagRu
            } else if hord == MagbRu[i]{
                arrayHord = MagbRu
                parallelTonality = MinRU
            } else if hord == MinbRU[i]{
                arrayHord = MinbRU
                parallelTonality = MagRu
            }
        
        }

    }

    
}


// мажерная тональность 1,4,5 + -2, 4, 5
// минорная тональность 1,4,5 + +2, 4, 5

