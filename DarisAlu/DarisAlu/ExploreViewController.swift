//
//  ExploreViewController.swift
//  DarisAlu
//
//  Created by Timur Kaldybek on 23.07.2018.
//  Copyright © 2018 Timur Kaldybek. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase
class ExploreViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var EnterButton: UIButton!
    @IBOutlet weak var darisAluImg: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBAction func logOutBtnPressed(_ sender: Any)
    {
        try! Auth.auth().signOut()
        performSegue(withIdentifier: "segue2", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        darisAluImg.center.x = 0
        darisAluImg.center.y = -150
        
        descriptionLabel.alpha = 0
        EnterButton.alpha = 0
        darisAluImg.alpha = 0
        welcomeLabel.alpha = 0
        
        descriptionLabel.center.x = -200
        EnterButton.layer.cornerRadius = 15
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        UIView.animate(withDuration:1.5, animations: {
            self.welcomeLabel.alpha = 1
            self.darisAluImg.alpha = 1
            self.darisAluImg.center.y = self.view.frame.height/2.4
            self.darisAluImg.center.x = self.view.frame.width/2
            self.descriptionLabel.alpha = 1
        }) { (true) in
            UIView.animate(withDuration: 1.0, animations: {
                self.EnterButton.alpha = 1
            })
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
