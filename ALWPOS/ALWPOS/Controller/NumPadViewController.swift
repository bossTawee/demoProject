//
//  NumPadViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 7/12/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class NumPadViewController: UIViewController {

    @IBOutlet weak var num1Button: UIButton!
    @IBOutlet weak var num2Button: UIButton!
    @IBOutlet weak var num3Button: UIButton!
    @IBOutlet weak var num4Button: UIButton!
    @IBOutlet weak var num5Button: UIButton!
    @IBOutlet weak var num6Button: UIButton!
    @IBOutlet weak var num7Button: UIButton!
    @IBOutlet weak var num8Button: UIButton!
    @IBOutlet weak var num9Button: UIButton!
    @IBOutlet weak var num0Button: UIButton!
    @IBOutlet weak var delButton: UIButton!
    @IBOutlet weak var dotButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiRadiusButton(num1Button)
        uiRadiusButton(num2Button)
        uiRadiusButton(num3Button)
        uiRadiusButton(num4Button)
        uiRadiusButton(num5Button)
        uiRadiusButton(num6Button)
        uiRadiusButton(num7Button)
        uiRadiusButton(num8Button)
        uiRadiusButton(num9Button)
        uiRadiusButton(num0Button)
        uiRadiusButton(delButton)
        uiRadiusButton(dotButton)
        
        
    }
    
    @IBAction func num1BtnTap(_ sender: Any) {
        
    }
    @IBAction func num2BtnTap(_ sender: Any) {
        
    }
    @IBAction func num3BtnTap(_ sender: Any) {
        
    }
    @IBAction func num4BtnTap(_ sender: Any) {
        
    }
    @IBAction func num5BtnTap(_ sender: Any) {
        
    }
    @IBAction func num6BtnTap(_ sender: Any) {
        
    }
    @IBAction func num7BtnTap(_ sender: Any) {
        
    }
    @IBAction func num8BtnTap(_ sender: Any) {
        
    }
    @IBAction func num9BtnTap(_ sender: Any) {
        
    }
    @IBAction func num0BtnTap(_ sender: Any) {
        
    }
    @IBAction func delBtnTap(_ sender: Any) {
        
    }
    @IBAction func dotBtnTap(_ sender: Any) {
        
    }
    
    func uiRadiusButton(_ button: UIButton) {
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 45
    }
    
}
