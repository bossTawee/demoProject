//
//  ViewController.swift
//  ALWPOS
//
//  Created by Hive on 1/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

protocol login {
    func signIn(value: Int)
}

@available(iOS 13.0, *)
class ViewController: UIViewController, login {
   
    var statusLogin: Int = 0
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        print(statusLogin)
//        let realm = try! Realm()
//        print(" Url Local Database: \(Realm.Configuration.defaultConfiguration.fileURL!)")
        
        if statusLogin == 1 {
            self.performSegue(withIdentifier: "gotoManageBrandWithSegue", sender: nil)
        }else if statusLogin == 2 {
            self.performSegue(withIdentifier: "goToLoginWithSegue", sender: nil)
        }else if statusLogin == 3 {
            self.performSegue(withIdentifier: "goToHomeSb", sender: nil)
        } else {
            self.performSegue(withIdentifier: "gotoMainLoginWithSegue", sender: nil)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToLoginWithSegue" {
            if let vc = segue.destination as? LoginViewController {
                vc.loginDelgate = self
            }
        }
        if segue.identifier == "gotoManageBrandWithSegue" {
            if let vc = segue.destination as? ManageBrandViewController {
                vc.loginDelgate = self
            }
        }
        if segue.identifier == "gotoMainLoginWithSegue" {
            if let vc = segue.destination as? MainLoginViewController {
                vc.loginDelgate = self
            }
        }
    }
    
    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboardSegue) {
        print("view controller")
        //let sourceViewController = unwindSegue.source
        // Use data from the view controller which initiated the unwind segue
    }
    
    //MARK: - protocal
    func signIn(value: Int) {
        statusLogin = value
    }
    
    

}

