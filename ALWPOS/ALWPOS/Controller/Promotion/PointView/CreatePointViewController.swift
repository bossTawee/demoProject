//
//  CreatePointViewController.swift
//  ALWPOS
//
//  Created by iMac 4k on 1/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class CreatePointViewController: UIViewController {

    @IBOutlet weak var buyProductSwitch: UISwitch!
    @IBOutlet weak var buyProductTextField: UITextField!
    @IBOutlet weak var buyProductPriceSwitch: UISwitch!
    @IBOutlet weak var buyProductPriceTextField: UITextField!
    @IBOutlet weak var dateStartButton: UIButton!
    @IBOutlet weak var dateTimeButton: UIButton!
    @IBOutlet weak var toStartButton: UIButton!
    @IBOutlet weak var toTimeButton: UIButton!
    @IBOutlet weak var pointTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonCornerBorderRadius(button: dateStartButton)
        buttonCornerBorderRadius(button: dateTimeButton)
        buttonCornerBorderRadius(button: toStartButton)
        buttonCornerBorderRadius(button: toTimeButton)
        buttonCornerRadius(button: submitButton)
        buttonCornerRadius(button: cancelButton)
        
        if buyProductSwitch.isOn == true {
            buyProductPriceTextField.isEnabled = false
        }
    }
    
    @IBAction func buyProductSwitchTapped(_ sender: Any) {
        if buyProductSwitch.isOn == true {
            buyProductPriceTextField.isEnabled = false
            buyProductPriceSwitch.isOn = false
            buyProductTextField.isEnabled = true
            buyProductSwitch.isOn = true
        } else {
            buyProductTextField.isEnabled = false
            buyProductSwitch.isOn = false
            buyProductPriceTextField.isEnabled = true
            buyProductPriceSwitch.isOn = true
        }
    }
    @IBAction func buyProductPriceTapped(_ sender: Any) {
        if buyProductSwitch.isOn == true {
            buyProductTextField.isEnabled = false
            buyProductSwitch.isOn = false
            buyProductPriceTextField.isEnabled = true
            buyProductPriceSwitch.isOn = true
        } else {
            buyProductTextField.isEnabled = true
            buyProductSwitch.isOn = true
            buyProductPriceTextField.isEnabled = false
            buyProductPriceSwitch.isOn = false
        }
    }
    @IBAction func dateStartButtonTapped(_ sender: Any) {
    }
    @IBAction func dateTimeButtonTapped(_ sender: Any) {
    }
    @IBAction func toStartButtonTapped(_ sender: Any) {
    }
    @IBAction func toTimeButtonTapped(_ sender: Any) {
    }
    @IBAction func submitButtonTapped(_ sender: Any) {
    }
    @IBAction func cancelButtonTapped(_ sender: Any) {
    }
    
    func buttonCornerBorderRadius(button: UIButton){
        button.layer.borderWidth = 0.8
        button.layer.borderColor = UIColor(red:0.8, green:0.8, blue:0.8, alpha:1.0).cgColor
        button.layer.cornerRadius = 5
    }
    func buttonCornerRadius(button: UIButton){
        button.layer.cornerRadius = 5
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
