//
//  TestingFile.swift
//  DarisAlu
//
//  Created by Timur Kaldybek on 01.08.2018.
//  Copyright © 2018 Timur Kaldybek. All rights reserved.
//

import Foundation

//      print("!!!!!!!!!!!!!!!!!!!!!!!!!!!!   \(randomQuestionGenerate(10, allQuestions.list.count, nil))")
//    func randomQuestionGenerate(_ from: Int, _ to:Int, _ qual:Int?) -> [Int]{
//        var myRandomNumbers = [Int]()
//        var numberOfQuantity = qual // how many numbers need to generate
//
//        let lower = UInt32(from)
//        let higher = UInt32(to+1)
//
//        if numberOfQuantity == nil || numberOfQuantity! > (to-from)+1{
//            numberOfQuantity = (to-from)+1
//        }
//
//        while myRandomNumbers.count != numberOfQuantity{
//            let myNumber = arc4random_uniform(higher-lower) + lower
//            if !myRandomNumbers.contains(Int(myNumber)){
//                myRandomNumbers.append(Int(myNumber))
//       //         questionLabel.text = allQuestions.list[myNumber]
//            }
//        }
//        return myRandomNumbers
//    }


// questionLabel.text =  allQuestions.list[questionNumber].questionText
/*
 let tempVariable = arc4random_uniform(10)
 if (tempVariable % 2 == 0){
 firstAnswer.setTitle(allQuestions.list[temp].answer, for: .normal)
 secondAnswer.setTitle(allQuestions.list[temp].secondAnswer, for: .normal)
 }
 else{
 firstAnswer.setTitle(allQuestions.list[temp].secondAnswer, for: .normal)
 secondAnswer.setTitle(allQuestions.list[temp].answer, for: .normal)
 }
 */

//    func getIndexes(lvl: String) -> [Int] {
//        var array: [Int] = []
//        var numberOfElementsInArray = 0
//        switch lvl {
//        case "easy":
//            numberOfElementsInArray = 10
//        case "medium":
//            numberOfElementsInArray = 20
//        case "hard":
//            numberOfElementsInArray = 30
//        default:
//            numberOfElementsInArray = 0
//        }
//        while (array.count <= numberOfElementsInArray) {
//            let randomIndex = randomNumber(inRange: 0...50)
//            if !array.contains(randomIndex){
//                array.append(randomIndex)
//            }
//        }
//        return array
//    }
//    public func randomNumber<T : SignedInteger>(inRange range: ClosedRange<T> = 1...6) -> T {
//        let length = Int64(range.upperBound - range.lowerBound + 1)
//        let value = Int64(arc4random()) % length + Int64(range.lowerBound)
//        return T(value)
//    }

/*
 func chooseCorrectAnswer(){
 for _ in array{
 //        questionLabel.text = question.questionText
 let tempVariable = arc4random_uniform(10)
 if (tempVariable % 2 == 0){
 
 firstAnswer.setTitle(thirdElement, for: .normal)
 secondAnswer.setTitle(secondElement, for: .normal)
 
 //   firstAnswer.setTitle(question.answer, for: .normal)
 //   secondAnswer.setTitle(question.secondAnswer, for: .normal)
 } else {
 
 secondAnswer.setTitle(thirdElement, for: .normal)
 firstAnswer.setTitle(secondElement, for: .normal)
 
 //    secondAnswer.setTitle(question.answer, for: .normal)
 //    firstAnswer.setTitle(question.secondAnswer, for: .normal)
 }
 corAns = secondElement
 }
 }
 
 
 */

