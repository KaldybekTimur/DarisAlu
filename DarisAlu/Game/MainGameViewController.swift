//
//  MainGameViewController.swift
//  DarisAlu
//
//  Created by Timur Kaldybek on 24.07.2018.
//  Copyright © 2018 Timur Kaldybek. All rights reserved.
//

import UIKit

class MainGameViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    
    var score = 0
    var temp = 0
    var totalQuestion = 0
    var questionNumber = 0
    var pickedAnswer : String!
    var timerSeconds: Int?
    var isFisrtQuestion = true
    var corAns = ""
    var currentLvl = 0
    var array: [String] = []
    var qulOfQuestions = 0
    
    var abc = 0
    var element = ""
    var secondElement = ""
    var thirdElement = ""
    var numberOfQuestions = 0
    
    @IBOutlet weak var firstAnswer: UIButton!
    @IBOutlet weak var secondAnswer: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var timer: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var firstAnswerBtn: UIButton!
    @IBOutlet weak var secondAnswerBtn: UIButton!
    @IBOutlet weak var progressLabel: UILabel!

    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        countOfQuestions()
        nextQuestion()
   }

override func didReceiveMemoryWarning() {super.didReceiveMemoryWarning()}
    
    
    @IBAction func answerBtnPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAnswer = (firstAnswer.titleLabel?.text)!
        }
        else if sender.tag == 2 {
            pickedAnswer = (secondAnswer.titleLabel?.text)!
        }
        checkAnswer()
        questionNumber += 1
        nextQuestion()
        seconds = timerSeconds!
        updateTimer()
    }

    func updateUI(){

        let totalQuestionNumber = allQuestions.list.count
        totalQuestion = totalQuestionNumber
        
        if temp < totalQuestion{
            
            scoreLabel.text = "\(score)"
            progressLabel.text = "\(questionNumber + 1)/\(numberOfQuestions)"
            
            countOfQuestions()
            temp += 1
        } else {
            print("All")
        }
    }
    
    func nextQuestion(){
        if isFisrtQuestion{
            runTimer()
            isFisrtQuestion = false
        }
       
        let totalQuestionNumber =  allQuestions.list.count
            totalQuestion = totalQuestionNumber
        
        if questionNumber <= totalQuestion - 1{
            updateUI()
        }
        else{
            print("BADABOOM")
            score = 0
        }
    }
    
    func checkAnswer(){
        
        if let text = pickedAnswer {
            
            let totalQuestionNumber = array.count
            
            totalQuestion = totalQuestionNumber
            
            if questionNumber < totalQuestionNumber {
                
                if corAns == text {
                    score += 1
                } else {
                    print("Wrong")
                }
            } else {
                print("Thats all Questions")
                score = 0
            }
        }
    }
    
//    func startOver() {
//        questionNumber = 0
//        nextQuestion()
//    }
//
//    func endGame(){
//        questionNumber = 0
//        timer.text = "00:00"
//
//    }
    
    // ***********************---TIMER---****************************\\
    
    var myTimer = Timer()
    var seconds = 10
    var isTimerRunning = false
    
    @objc func updateTimer() {
        seconds -= 1
        if seconds == 0{
            questionNumber += 1
            nextQuestion()
            seconds = timerSeconds!
        }
        timer.text = timeString(time: TimeInterval(seconds))
    }
    
    func timeString(time:TimeInterval) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format: "%02i:%02i" , minutes, seconds)
    }
    
    func runTimer() {
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(MainGameViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    func performSegueToReturnBack(){
        if let nav = self.navigationController {
            nav.popViewController(animated: true)
        } else {
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    func countOfQuestions(){
            if currentLvl == 1{
                if abc < 10 {

                    let index = Int(arc4random_uniform(UInt32(allQuestions.list.count)))
                    element = allQuestions.list[index].questionText
                    secondElement = allQuestions.list[index].answer
                    thirdElement = allQuestions.list[index].secondAnswer
                    array.append(element)
                    array.append(secondElement)
                    array.append(thirdElement)
                    questionLabel.text = element
                    chooseCorrectAnswer()
                    abc += 1
                }else{
                    alertOfEndingGame()
            }
        } else if currentLvl == 2 {
            if abc < 15 {
                let index = Int(arc4random_uniform(UInt32(allQuestions.list.count)))
                element = allQuestions.list[index].questionText
                secondElement = allQuestions.list[index].answer
                thirdElement = allQuestions.list[index].secondAnswer
                array.append(element)
                array.append(secondElement)
                array.append(thirdElement)
                questionLabel.text = element
                chooseCorrectAnswer()
                abc += 1
            } else {
                alertOfEndingGame()
           }
      } else {
                if abc < 20 {
                    let index = Int(arc4random_uniform(UInt32(allQuestions.list.count)))
                    element = allQuestions.list[index].questionText
                    secondElement = allQuestions.list[index].answer
                    thirdElement = allQuestions.list[index].secondAnswer
                    array.append(element)
                    array.append(secondElement)
                    array.append(thirdElement)
                    questionLabel.text = element
                    chooseCorrectAnswer()
                    abc += 1
                } else {
                    alertOfEndingGame()
            }
        }
    }
    
    func chooseCorrectAnswer(){
        for _ in array{
 
            let tempVariable = arc4random_uniform(10)
            if (tempVariable % 2 == 0){
             firstAnswer.setTitle(thirdElement, for: .normal)
            secondAnswer.setTitle(secondElement, for: .normal)
            } else {
                secondAnswer.setTitle(thirdElement, for: .normal)
                firstAnswer.setTitle(secondElement, for: .normal)
            }
            corAns = secondElement
        }
    }
    
    func alertOfEndingGame(){
        let alert = UIAlertController(title: "Вы победили!", message:"Ваш счет: \(score)", preferredStyle: .alert)
        let restartAction = UIAlertAction(title: "Вернуться домой", style: .default, handler:{ (UIAlertAction) in
            self.performSegueToReturnBack()
        })
        alert.addAction(restartAction) // Вернуться в главный экран
        present(alert,animated: true,completion: nil)
        score = 0
    }
    
}

