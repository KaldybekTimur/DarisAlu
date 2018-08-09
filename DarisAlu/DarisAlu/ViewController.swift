//
//  ViewController.swift
//  DarisAlu
//
//  Created by Timur Kaldybek on 23.07.2018.
//  Copyright © 2018 Timur Kaldybek. All rights reserved.
//

import UIKit
import FirebaseAuth
import Firebase

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var loginTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var backImageView: UIImageView!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        if Auth.auth().currentUser != nil{
            self.performSegue(withIdentifier: "segue", sender: self)
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        loginBtn.layer.cornerRadius = 15
        self.backImageView.layer.cornerRadius = 20
        self.backImageView.clipsToBounds = true
        
        segmentControl.backgroundColor = .clear
        segmentControl.tintColor = .clear
        
        segmentControl.setTitleTextAttributes([
            NSAttributedStringKey.font : UIFont(name: "DINCondensed-Bold", size: 18) as Any,
            NSAttributedStringKey.foregroundColor: UIColor.gray
            ], for: .normal)
        
        segmentControl.setTitleTextAttributes([
            NSAttributedStringKey.font : UIFont(name: "DINCondensed-Bold", size: 18) as Any,
            NSAttributedStringKey.foregroundColor: UIColor.orange
            ], for: .selected)
        
        let myColor : UIColor = UIColor.gray
        
        loginTxtField.backgroundColor = .clear
        loginTxtField.layer.borderWidth = 0.3
        loginTxtField.layer.borderColor = myColor.cgColor
        loginTxtField.layer.cornerRadius = 10
        loginTxtField.textColor = .white
        
        passwordTxtField.backgroundColor = .clear
        passwordTxtField.layer.borderWidth = 0.3
        passwordTxtField.layer.borderColor = myColor.cgColor
        passwordTxtField.layer.cornerRadius = 10
        passwordTxtField.textColor = .white

        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func logintBtnPressed(_ sender: UIButton){
        if loginTxtField.text != nil && passwordTxtField.text != nil{
            if segmentControl.selectedSegmentIndex == 0{
                Auth.auth().signIn(withEmail: loginTxtField.text!, password: passwordTxtField.text!) { (user, error) in
                    if user != nil{
                        self.performSegue(withIdentifier: "segue", sender: self)
                    }else{
                        if let myError = error?.localizedDescription {
                            self.errorLabel.alpha = 1
                            self.errorLabel.text = myError
                        }else{
                            self.errorLabel.alpha = 1
                            self.errorLabel.text = "Error"
                        }
                    }
                }
            } else {
                Auth.auth().createUser(withEmail: loginTxtField.text!, password: passwordTxtField.text!) { (user, error) in
                    if user != nil {
                        self.performSegue(withIdentifier: "segue", sender: self)
                    }else{
                        if let myError = error?.localizedDescription{
                            print(myError)
                            self.errorLabel.alpha = 1
                            self.errorLabel.text = myError
                        }else{
                            self.errorLabel.alpha = 1
                            self.errorLabel.text = "Error"
                        }
                    }
                }
            }
        }
    }
}
