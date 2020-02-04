//
//  CreditCardViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 9/12/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class CreditCardViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var idCardTextField: UITextField!
    @IBOutlet weak var cvcTextField: UITextField!
    @IBOutlet weak var expButton: UIButton!
    
    @IBOutlet weak var creditType: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiBtnRadius(creditType)
        uiBtnRadius(expButton)
        // Do any additional setup after loading the view.
    }
    
    func uiBtnRadius(_ button: UIButton) {
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.bgGray.cgColor
    }
    

}
