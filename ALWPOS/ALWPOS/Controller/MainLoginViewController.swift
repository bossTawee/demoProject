//
//  MainLoginViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 20/1/2563 BE.
//  Copyright © 2563 ALW. All rights reserved.
//

import UIKit
import FirebaseAuth
import FBSDKLoginKit
import GoogleSignIn

class MainLoginViewController: UIViewController {
    
    var loginDelgate: login?
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginMainView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var facebookButton: UIButton!
    @IBOutlet weak var gmailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginMainView.viewCornerRadius()
        loginButton.buttonConnerRadius()
        registerButton.buttonConnerRadius()
        facebookButton.buttonConnerRadius()
        gmailButton.buttonConnerRadius()
        usernameTextField.setLeftImage(imageName: "user_Icon")
        usernameTextField.backgroundColor = UIColor.clear
        passwordTextField.setLeftImage(imageName: "password_Icon")
        passwordTextField.backgroundColor = UIColor.clear
    
    }
    @IBAction func forgotPasswordButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "gotoPasswordViewController", sender: nil)
    }
    
    @IBAction func loginButtonTapped(_ sender: Any) {
//        loginDelgate?.signIn(value: 1)
        loginDelgate?.signIn(value: 2)
        self.performSegue(withIdentifier: "backToViewController", sender: nil)
    }
    @IBAction func registerButtonTapped(_ sender: Any) {
        self.performSegue(withIdentifier: "gotoRegisterViewController", sender: nil)
    }
    
    @IBAction func facebookButtonTapped(_ sender: Any) {
        LoginManager().logIn(permissions: ["email", "public_profile"], from: self) { (result, err) in
            if err != nil {
                return
            } else {
//                print(result?.token?.tokenString)
                let credential = FacebookAuthProvider.credential(withAccessToken: AccessToken.current!.tokenString)
                Auth.auth().signIn(with: credential) { (authResult, error) in
                    if error != nil {
                        return
                    } else {
                        print("Register FB ")
                    }
                }
            }
        }
    }
    
    @IBAction func gmailButtonTapped(_ sender: Any) {
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance().signIn()
    }
    
    @IBAction func unwindToMainLoginViewController(_ unwindSegue: UIStoryboardSegue) {
        print("mainLogin controller")
        //let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
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
