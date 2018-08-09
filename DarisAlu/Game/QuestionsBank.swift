//
//  QuestionsBank.swift
//  DarisAlu
//
//  Created by Timur Kaldybek on 24.07.2018.
//  Copyright © 2018 Timur Kaldybek. All rights reserved.
//

import Foundation
class QuestionBank {
    
    var list = [Question]()
    init(){
    list.append(Question(text: "Киiм", correctAnswer: "Kıіm", wrongAnswer: "Kii'm", type: "Clothes"))
    list.append(Question(text: "Тымақ", correctAnswer: "Tymaq", wrongAnswer: "Tymak", type: "Clothes"))
    list.append(Question(text: "Бөкебай", correctAnswer: "Bókebaı", wrongAnswer: "Bókebay", type: "Clothes"))
    list.append(Question(text: "Тақия", correctAnswer: "Taqııa", wrongAnswer: "Taqiya", type: "Clothes"))
    list.append(Question(text: "Сәукеле", correctAnswer: "Sáýkele", wrongAnswer: "Sáukele", type: "Clothes"))
    list.append(Question(text: "Көйлек", correctAnswer: "Kóılek", wrongAnswer: "Kóylek", type: "Clothes"))
    list.append(Question(text: "Иткөйлек", correctAnswer: "Itkóılek", wrongAnswer: "Itkóylek", type: "Clothes"))
    list.append(Question(text: "Шұлық", correctAnswer: " Shulyq", wrongAnswer: "Shy'lyk", type: "Clothes"))
    list.append(Question(text: "Түйме", correctAnswer: " Túıme", wrongAnswer: "Tuime", type: "Clothes"))
    list.append(Question(text: "Шәлі", correctAnswer: "Shálі", wrongAnswer: "Sha'li'", type: "Clothes"))
        list.append(Question(text: "әмбебап", correctAnswer: "ámbebap", wrongAnswer: "ambebap", type: "withoutType"))
        list.append(Question(text: "әңгiмешiл", correctAnswer: "áńgimeshil", wrongAnswer: "ańgimeshil", type: "withoutType"))
        list.append(Question(text: "қызғаншақ", correctAnswer: "qyzǵanshaq", wrongAnswer: "qyzǵanshak", type: "withoutType"))
        list.append(Question(text: "қызғылт", correctAnswer: "qyzǵylt", wrongAnswer: "kyzǵylt", type: "withoutType"))
        list.append(Question(text: "құрмалас", correctAnswer: "qurmalas", wrongAnswer: "kurmalas", type: "withoutType"))
        list.append(Question(text: "құрметті", correctAnswer: "qurmettі", wrongAnswer: "qurmetty", type: "withoutType"))
        list.append(Question(text: "құтты", correctAnswer: "qutty", wrongAnswer: "kutty", type: "withoutType"))
        list.append(Question(text: "аяулы", correctAnswer: "aıaýly", wrongAnswer: "ayauly", type: "withoutType"))
        list.append(Question(text: "атақты", correctAnswer: "ataqty", wrongAnswer: "atakty", type: "withoutType"))
        list.append(Question(text: "алғышқы", correctAnswer: "alǵyshqy", wrongAnswer: "algywqy", type: "withoutType"))
        list.append(Question(text: "алдыңғы", correctAnswer: "aldyńǵy", wrongAnswer: "aldyngy", type: "withoutType"))
        list.append(Question(text: "қараңғы", correctAnswer: "qarańǵy", wrongAnswer: "qarańgy", type: "withoutType"))
        list.append(Question(text: "қарапайым", correctAnswer: "qarapaıym", wrongAnswer: "qarapaym", type: "withoutType"))
        list.append(Question(text: "қараторы", correctAnswer: "qaratory", wrongAnswer: "karatory", type: "withoutType"))
        list.append(Question(text: "айнадай", correctAnswer: "aınadaı", wrongAnswer: "aınaday", type: "withoutType"))
        list.append(Question(text: "ыңғайлы", correctAnswer: "yńǵaıly", wrongAnswer: "yńǵayly", type: "withoutType"))
        list.append(Question(text: "ыңғайсыз", correctAnswer: "yńǵaısyz", wrongAnswer: "yńǵaysyz", type: "withoutType"))
        list.append(Question(text: "ыстық", correctAnswer: "ystyq", wrongAnswer: "ystyk", type: "withoutType"))
        list.append(Question(text: "еңбекқор", correctAnswer: "eńbekqor", wrongAnswer: "eńbekkor", type: "withoutType"))
        list.append(Question(text: "еңкіш", correctAnswer: "eńkіsh", wrongAnswer: "enkish", type: "withoutType"))
        list.append(Question(text: "домалақ", correctAnswer: "domalaq", wrongAnswer: "domalak", type: "withoutType"))
        list.append(Question(text: "дөңгелек", correctAnswer: "dóńgelek", wrongAnswer: "dongeleq", type: "withoutType"))
        list.append(Question(text: "бұзылған", correctAnswer: "buzylǵan", wrongAnswer: "buzylgan", type: "withoutType"))
        list.append(Question(text: "бұйра", correctAnswer: "buıra", wrongAnswer: "buyra", type: "withoutType"))
        list.append(Question(text: "бұқтырылған", correctAnswer: "buqtyrylǵan", wrongAnswer: "buktyrylgan", type: "withoutType"))
        list.append(Question(text: "басыңқы", correctAnswer: "basyńqy", wrongAnswer: "basynqy", type: "withoutType"))
        list.append(Question(text: "батыл", correctAnswer: "batyl", wrongAnswer: "batil", type: "withoutType"))
        list.append(Question(text: "батырлық", correctAnswer: "batyrlyq", wrongAnswer: "batyrlyk", type: "withoutType"))
        list.append(Question(text: "бауырмал", correctAnswer: "baýyrmal", wrongAnswer: "bauyrmal", type: "withoutType"))
        list.append(Question(text: "баяғы", correctAnswer: "baıaǵy", wrongAnswer: "baıagy", type: "withoutType"))
        list.append(Question(text: "баяу", correctAnswer: "baıaý", wrongAnswer: "baıau", type: "withoutType"))
        list.append(Question(text: "бейбіт", correctAnswer: "beıbіt", wrongAnswer: "beybit", type: "withoutType"))
        list.append(Question(text: "бейнелі", correctAnswer: "beınelі", wrongAnswer: "beyneli", type: "withoutType"))
        list.append(Question(text: "бейтаныс", correctAnswer: "beıtanys", wrongAnswer: "beytanys", type: "withoutType"))
        list.append(Question(text: "берік", correctAnswer: "berіk", wrongAnswer: "beryk", type: "withoutType"))
        list.append(Question(text: "биік", correctAnswer: "bıіk", wrongAnswer: "biyik", type: "withoutType"))
        list.append(Question(text: "әйгілі", correctAnswer: "áıgіlі", wrongAnswer: "aigili", type: "withoutType"))
    }
}

