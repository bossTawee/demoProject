//
//  RegisterViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 27/1/2563 BE.
//  Copyright © 2563 ALW. All rights reserved.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {

    @IBOutlet weak var RegisterMainView: UIView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        RegisterMainView.viewCornerRadius()
        registerButton.buttonConnerRadius()
        cancelButton.buttonConnerRadius()
        emailTextField.setLeftImage(imageName: "user_Icon")
        emailTextField.backgroundColor = UIColor.clear
        passwordTextField.setLeftImage(imageName: "password_Icon")
        passwordTextField.backgroundColor = UIColor.clear
        confirmPasswordTextField.setLeftImage(imageName: "password_Icon")
        confirmPasswordTextField.backgroundColor = UIColor.clear
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) { (authResult, error) in
            if error != nil {
                return
            } else {
                print("Register Email")
                self.performSegue(withIdentifier: "backToMainLoginViewController", sender: nil)
            }
        }
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
