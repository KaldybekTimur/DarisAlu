//
//  ProfileViewController.swift
//  DarisAlu
//
//  Created by Timur Kaldybek on 31.07.2018.
//  Copyright © 2018 Timur Kaldybek. All rights reserved.
//

import UIKit
import Foundation
import MessageUI
class ProfileViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var backImageView: UIImageView!
    @IBOutlet weak var feedbackBtn: UIButton!
    @IBOutlet weak var profileImg: UIImageView!
    @IBOutlet weak var darisAluLbl: UILabel!
    

    
    @IBAction func sendMailBtnPressed(_ sender: Any) {
        let mailComposeViewController = configureMail()
        if MFMailComposeViewController.canSendMail(){
            self.present(mailComposeViewController, animated: true, completion: nil)
            
        }else{
            self.showSendMailError()
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
            self.backImageView.layer.cornerRadius = 20
        feedbackBtn.layer.cornerRadius = 15
        profileImg.alpha = 0
        darisAluLbl.alpha = 0
        
        UIView.animate(withDuration:1.5, animations: {
            self.profileImg.alpha = 1
         
        }){ (true) in
            UIView.animate(withDuration: 1.0, animations: {
                self.darisAluLbl.alpha=1
                self.darisAluLbl.font = UIFont(name: self.darisAluLbl.font.fontName, size: 35)
            })
        }
        
        
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {super.didReceiveMemoryWarning()}
    
    func configureMail() -> MFMailComposeViewController{
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["timkaldybek@gmail.com"])
        mailComposerVC.setSubject("Приложение Daris Alu")
        mailComposerVC.setMessageBody("Добрые день :)", isHTML: false)
        return mailComposerVC
    }
    
    func showSendMailError(){
        let sendMailError = UIAlertView(title: "Не могу отправить письмо:(", message: "Ваше устройство должно иметь активную почту", delegate: self, cancelButtonTitle: "Хорошо")
        sendMailError.show()
    }

    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func shareViaInstagramBtn(_ sender: Any) {
        
        let image = UIImage(named: "darisAlu")
        let objectsToShare: [AnyObject] = [ image! ]
        let activityViewController = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        activityViewController.excludedActivityTypes = [ UIActivityType.airDrop, UIActivityType.postToFacebook ]
        self.present(activityViewController, animated: true, completion: nil)
    }

    
    @IBAction func shareViaVK(_ sender: Any) {
        
        let image = UIImage(named: "darisAlu")
        let objectsToShare: [AnyObject] = [ image! ]
        let activityViewController = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
       activityViewController.excludedActivityTypes = [ UIActivityType.airDrop, UIActivityType.postToFacebook, UIActivityType.postToTwitter, UIActivityType.mail ]
        self.present(activityViewController, animated: true, completion: nil)
    }
    
    @IBAction func shareBtnPressed(_ sender: Any) {
        
        let image = UIImage(named: "darisAlu")
        let objectsToShare: [AnyObject] = [ image! ]
        let activityViewController = UIActivityViewController(activityItems: objectsToShare,  applicationActivities: nil)
        activityViewController.popoverPresentationController?.sourceView = self.view
        self.present(activityViewController, animated: true, completion: nil)
    }
    
    
 }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


