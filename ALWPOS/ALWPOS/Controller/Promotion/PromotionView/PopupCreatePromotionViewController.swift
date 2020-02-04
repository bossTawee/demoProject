//
//  PopupCreatePromotionViewController.swift
//  ALWPOS
//
//  Created by Hive Dev on 11/10/19.
//  Copyright © 2019 ALW. All rights reserved.
//

import UIKit

class PopupCreatePromotionViewController: UIViewController {

    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var productTableView: UITableView!
    @IBOutlet weak var codePromotionTextField: UITextField!
    @IBOutlet weak var namePromotionTextField: UITextField!
    @IBOutlet weak var conditionButton: UIButton!
    @IBOutlet weak var giftButton: UIButton!
    @IBOutlet weak var conditionNumberSwitch: UISwitch!
    @IBOutlet weak var conditionNumberTextField: UITextField!
    @IBOutlet weak var conditionValueSwitch: UISwitch!
    @IBOutlet weak var conditionValueTextField: UITextField!
    @IBOutlet weak var startDatePromotionButton: UIButton!
    @IBOutlet weak var startTimePromotionButton: UIButton!
    @IBOutlet weak var endDatePromotionButton: UIButton!
    @IBOutlet weak var endTimePromotionButton: UIButton!
    @IBOutlet weak var createPromotionButton: UIButton!
    @IBOutlet weak var savePromotionButton: UIButton!
    @IBOutlet weak var cancleButton: UIButton!
    @IBOutlet weak var productButton: UIButton!
    @IBOutlet weak var discountSwitch: UISwitch!
    @IBOutlet weak var discountPercentTextField: UITextField!
    @IBOutlet weak var discountDollarTextField: UITextField!
    @IBOutlet weak var discountPointTextField: UITextField!
    @IBOutlet weak var freeSwitch: UISwitch!
    @IBOutlet weak var discountTextField: UITextField!
    @IBOutlet weak var productSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        buttonCornerRadius(button: createPromotionButton)
        buttonCornerRadius(button: savePromotionButton)
        buttonCornerRadius(button: cancleButton)
        buttonCornerBorderRadius(button: productButton)
        buttonCornerBorderRadius(button: startDatePromotionButton)
        buttonCornerBorderRadius(button: startTimePromotionButton)
        buttonCornerBorderRadius(button: endDatePromotionButton)
        buttonCornerBorderRadius(button: endTimePromotionButton)
        
        if conditionNumberSwitch.isOn == true {
            conditionValueTextField.isEnabled = false
        }
        if productSwitch.isOn == true {
            discountPercentTextField.isEnabled = false
            discountDollarTextField.isEnabled = false
            discountPointTextField.isEnabled = false
        }
    }
    @IBAction func conditionNumberSwitchTapped(_ sender: Any) {
        print(conditionNumberSwitch.isOn)
        if conditionNumberSwitch.isOn == true {
            conditionValueTextField.isEnabled = false
            conditionValueSwitch.isOn = false
            conditionNumberTextField.isEnabled = true
            conditionNumberSwitch.isOn = true
        } else {
            conditionNumberTextField.isEnabled = false
            conditionNumberSwitch.isOn = false
            conditionValueTextField.isEnabled = true
            conditionValueSwitch.isOn = true
        }
    }
    @IBAction func conditionValueSwitchTapped(_ sender: Any) {
        print(conditionNumberSwitch.isOn)
        if conditionValueSwitch.isOn == true {
            conditionNumberTextField.isEnabled = false
            conditionNumberSwitch.isOn = false
            conditionValueTextField.isEnabled = true
            conditionValueSwitch.isOn = true
        } else {
            conditionValueTextField.isEnabled = false
            conditionValueSwitch.isOn = false
            conditionNumberTextField.isEnabled = true
            conditionNumberSwitch.isOn = true
        }
    }
    @IBAction func productSwitchTapped(_ sender: Any) {
        if productSwitch.isOn == true {
            discountSwitch.isOn = false
            discountPercentTextField.isEnabled = false
            discountDollarTextField.isEnabled = false
            discountPointTextField.isEnabled = false
            freeSwitch.isEnabled = true
            productButton.isEnabled = true
            productButton.backgroundColor = UIColor.white
            productButton.layer.opacity = 1
            discountTextField.isEnabled = true
            productTableView.isHidden = false
            createPromotionButton.isEnabled = true
        } else {
            discountSwitch.isOn = true
            freeSwitch.isEnabled = false
            productButton.isEnabled = false
            productButton.layer.backgroundColor = UIColor(red:0.8, green:0.8, blue:0.8, alpha:1.0).cgColor
            productButton.layer.opacity = 0.7
            discountTextField.isEnabled = false
            productTableView.isHidden = true
            discountPercentTextField.isEnabled = true
            discountDollarTextField.isEnabled = true
            discountPointTextField.isEnabled = true
            createPromotionButton.isEnabled = false
        }
    }
    @IBAction func discountSwitchTapped(_ sender: Any) {
        if discountSwitch.isOn == true {
            productSwitch.isOn = false
            freeSwitch.isEnabled = false
            productButton.isEnabled = false
            productButton.layer.backgroundColor = UIColor(red:0.8, green:0.8, blue:0.8, alpha:1.0).cgColor
            productButton.layer.opacity = 0.7
            discountTextField.isEnabled = false
            productTableView.isHidden = true
            discountPercentTextField.isEnabled = true
            discountDollarTextField.isEnabled = true
            discountPointTextField.isEnabled = true
            createPromotionButton.isEnabled = false
        } else {
            productSwitch.isOn = true
            discountPercentTextField.isEnabled = false
            discountDollarTextField.isEnabled = false
            discountPointTextField.isEnabled = false
            freeSwitch.isEnabled = true
            productButton.isEnabled = true
            productButton.backgroundColor = UIColor.white
            productButton.layer.opacity = 1
            discountTextField.isEnabled = true
            productTableView.isHidden = false
            createPromotionButton.isEnabled = true
        }
    }
    @IBAction func conditionButtonTapped(_ sender: Any) {
    }
    @IBAction func giftButtonTapped(_ sender: Any) {
    }
    @IBAction func startDatePromotionButtonTapped(_ sender: Any) {
    }
    @IBAction func startTimePromotionButtonTapped(_ sender: Any) {
    }
    @IBAction func endDatePromotionButtonTapped(_ sender: Any) {
    }
    @IBAction func endTimePromotionButtonTapped(_ sender: Any) {
    }
    @IBAction func createPromotionButtonTapped(_ sender: Any) {
    }
    @IBAction func savePromotionButtonTapped(_ sender: Any) {
    }
    @IBAction func cancelButtonTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func productButtonTapped(_ sender: Any) {
        if let vc = UIStoryboard(name: "Promotion", bundle: nil).instantiateViewController(withIdentifier: "popupSelected") as? PopupSelectProductViewController {
            vc.page = "product"
            if let navigator = navigationController {
                navigator.present(vc, animated: true)
            }
        }
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
