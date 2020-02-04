//
//  ForgotPasswordViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 2/2/2563 BE.
//  Copyright © 2563 ALW. All rights reserved.
//

import UIKit
import FirebaseAuth

class ForgotPasswordViewController: UIViewController {

    @IBOutlet weak var forgetPasswordView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var confirmButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        forgetPasswordView.viewCornerRadius()
        confirmButton.buttonConnerRadius()
        cancelButton.buttonConnerRadius()
        emailTextField.setLeftImage(imageName: "user_Icon")
        emailTextField.backgroundColor = UIColor.clear
    }
    
    @IBAction func confirmButtonTapped(_ sender: Any) {
        Auth.auth().sendPasswordReset(withEmail: emailTextField.text!, completion: { (error) in
            if error != nil{
                return
            } else {
                print("forget Password")
                self.performSegue(withIdentifier: "backToMainLoginViewController", sender: nil)
            }
        })
    }
    
    @IBAction func cancelButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "backToMainLoginViewController", sender: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
