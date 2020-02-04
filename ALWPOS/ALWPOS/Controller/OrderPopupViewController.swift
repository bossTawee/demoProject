//
//  OrderPopupViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 6/12/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class OrderPopupViewController: UIViewController {
    
    var titleStr: String?
    var numberStr: [String] = [String]()
    
    @IBOutlet weak var titleView: UIView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!{
        didSet {
            self.numberLabel.layer.borderWidth = 1
            self.numberLabel.layer.borderColor = UIColor.darkGray.cgColor
            self.numberLabel.layer.cornerRadius = 3
        }
    }
    
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
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var dotButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = titleStr
        titleView.topRounds(cornerRadius: 5)
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
        uiRadiusButton(deleteButton)
        uiRadiusButton(dotButton)
    }
    
    @IBAction func num1BtnTap(_ sender: Any) {
        appendnumberArray(num: "1")
    }
    @IBAction func num2BtnTap(_ sender: Any) {
        appendnumberArray(num: "2")
    }
    @IBAction func num3BtnTap(_ sender: Any) {
        appendnumberArray(num: "3")
    }
    @IBAction func num4BtnTap(_ sender: Any) {
        appendnumberArray(num: "4")
    }
    @IBAction func num5BtnTap(_ sender: Any) {
        appendnumberArray(num: "5")
    }
    @IBAction func num6BtnTap(_ sender: Any) {
        appendnumberArray(num: "6")
    }
    @IBAction func num7BtnTap(_ sender: Any) {
        appendnumberArray(num: "7")
    }
    @IBAction func num8BtnTap(_ sender: Any) {
        appendnumberArray(num: "8")
    }
    @IBAction func num9BtnTap(_ sender: Any) {
        appendnumberArray(num: "9")
    }
    @IBAction func num0BtnTap(_ sender: Any) {
        appendnumberArray(num: "0")
    }
    @IBAction func deleteBtnTap(_ sender: Any) {
        deleteNumberArray()
    }
    @IBAction func dotBtnTap(_ sender: Any) {
        appendnumberArray(num: ".")
    }
    @IBAction func saveBtnTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func cancelBtnTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    func appendnumberArray(num: String) {
        numberStr.append(num)
        let numtext = numberStr.joined(separator: "")
        self.numberLabel.text = numtext
    }
    
    func deleteNumberArray() {
        let delNumArr = numberStr.count - 1
        numberStr.remove(at: delNumArr)
        let numtext = numberStr.joined(separator: "")
        self.numberLabel.text = numtext
    }
    
    
    func uiRadiusButton(_ button: UIButton) {
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.darkGray.cgColor
        button.layer.cornerRadius = 48
    }

}
