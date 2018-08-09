//
//  LeaderBoardViewController.swift
//  DarisAlu
//
//  Created by Timur Kaldybek on 31.07.2018.
//  Copyright © 2018 Timur Kaldybek. All rights reserved.
//

import UIKit

class LeaderBoardViewController: UIViewController {
    
    @IBOutlet weak var rotateBtn: UIButton!
    @IBOutlet weak var backImageView: UIImageView!
    @IBOutlet weak var kazakhText: UILabel!
    @IBOutlet weak var kzLatinText: UILabel!
    
    @IBOutlet weak var shakeImage: UIImageView!
    @IBOutlet weak var shakeLabel: UILabel!
    
    var allQuestions = QuestionBank()
    var element = ""
    var secondElement = ""
    var degree = 10
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.backImageView.layer.cornerRadius = 20
        self.backImageView.clipsToBounds = true
        
    }
    
   override func viewDidAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2.5) {
           self.shakeImage.alpha = 0
            self.shakeLabel.alpha = 0
        }
    }
    @IBAction func updateText(_ sender: UIButton) {
        generateRandomQuestions()
        UIView.animate(withDuration: 0.5, animations: {
            self.rotateBtn.transform = CGAffineTransform(rotationAngle:  CGFloat.pi / 2 * CGFloat(self.degree))
        })
        degree += 10
    }
    
    
    func generateRandomQuestions(){
        let index = Int(arc4random_uniform(UInt32(allQuestions.list.count)))
        element = allQuestions.list[index].questionText
        secondElement = allQuestions.list[index].answer
        kazakhText.text = element
        kzLatinText.text = secondElement
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateText(rotateBtn)
    }
    
    
}
