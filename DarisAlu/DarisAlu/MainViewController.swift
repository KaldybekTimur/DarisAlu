//
//  MainViewController.swift
//  DarisAlu
//
//  Created by Timur Kaldybek on 24.07.2018.
//  Copyright © 2018 Timur Kaldybek. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var easyLevelButton: UIButton!
    @IBOutlet weak var mediumLevelButton: UIButton!
    @IBOutlet weak var hardLevelButton: UIButton!
    @IBOutlet weak var playButton: UIButton!
    
    var questionList = QuestionBank()
    
    var max = 0
    var time = 0
    var level = 0
    var currentEmail = ""
    
    @IBAction func hardLvlBtnPressed(_ sender: Any) {
        level = 3
        max = 20
    }
    
    @IBAction func mediumLvlBtnPressed(_ sender: Any) {
        level = 2
        max = 15
    }
    
    @IBAction func easyLvlBntPressed(_ sender: Any) {
        level = 1
        max = 10
    }
    
    @IBAction func chooseLevelBntPressed(_ sender: UIButton) {
    
        if level == 1 {
            time = 7
        }
        else if level == 2 {
            time = 5
        }
        else{
            time = 4
            max = 20
        }
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        easyLevelButton.layer.cornerRadius = 10
        mediumLevelButton.layer.cornerRadius = 10
        hardLevelButton.layer.cornerRadius = 10
        playButton.layer.cornerRadius = 20
        
        easyLevelButton.layer.shadowColor = UIColor.darkGray.cgColor
        easyLevelButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        easyLevelButton.layer.shadowRadius = 5
        easyLevelButton.layer.shadowOpacity = 1.5

        mediumLevelButton.layer.shadowColor = UIColor.darkGray.cgColor
        mediumLevelButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        mediumLevelButton.layer.shadowRadius = 5
        mediumLevelButton.layer.shadowOpacity = 1.5

        hardLevelButton.layer.shadowColor = UIColor.darkGray.cgColor
        hardLevelButton.layer.shadowOffset = CGSize(width: 5, height: 5)
        hardLevelButton.layer.shadowRadius = 5
        hardLevelButton.layer.shadowOpacity = 1.5
        easyLevelButton.center.x = 0
        easyLevelButton.center.y = 0
        
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        UIView.animate(withDuration:0.5, animations: {
            self.easyLevelButton.alpha = 1
        }) { (true) in
            UIView.animate(withDuration: 0.5, animations: {
                self.mediumLevelButton.alpha = 1
            })
            { (true) in
                UIView.animate(withDuration: 0.5, animations: {
                    self.hardLevelButton.alpha = 1
                })
                { (true) in
                    UIView.animate(withDuration: 0.4, animations: {
                        self.playButton.alpha = 1
                    })
                }
            }
        }
    }
    
override func didReceiveMemoryWarning(){super.didReceiveMemoryWarning()}
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let gameController = segue.destination as? MainGameViewController{
            
            gameController.timerSeconds = time
            gameController.currentLvl = level
            gameController.numberOfQuestions = max
                        
        }
    }
}
