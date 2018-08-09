//
//  Questions.swift
//  DarisAlu
//
//  Created by Timur Kaldybek on 24.07.2018.
//  Copyright © 2018 Timur Kaldybek. All rights reserved.
//

import Foundation

class Question{
    
    let questionText : String
    let questionType : String
    let answer : String!
    let secondAnswer : String!
    
    init(text : String, correctAnswer : String!, wrongAnswer : String! , type: String) {
        questionText = text
        questionType = type
        answer = correctAnswer
        secondAnswer = wrongAnswer
    }
}

