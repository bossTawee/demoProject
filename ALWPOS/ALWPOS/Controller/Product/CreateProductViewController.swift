//
//  CreateProductViewController.swift
//  ALWPOS
//
//  Created by Hive on 7/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class CreateProductViewController: UIViewController {
    
    var useTextField = UITextField()
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productCodeTextField: UITextField!
    @IBOutlet weak var productName1TextField: UITextField!
    @IBOutlet weak var productName2TextField: UITextField!
    @IBOutlet weak var productPriceTextField: UITextField!
    
    @IBOutlet weak var categoryProductBtn: UIButton!
    @IBOutlet weak var vatProductBtn: UIButton!
    @IBOutlet weak var unitProductBtn: UIButton!
    @IBOutlet weak var unitBuy1Btn: UIButton!
    @IBOutlet weak var unitBuy2Btn: UIButton!
    
    @IBOutlet weak var onDiscountBtn: UIButton!
    @IBOutlet weak var cutStockBtn: UIButton!
    @IBOutlet weak var usePointBtn: UIButton!
    @IBOutlet weak var usePromotionBtn: UIButton!
    @IBOutlet weak var canSaleBtn: UIButton!
    @IBOutlet weak var kioskSaleBtn: UIButton!
    
    @IBOutlet weak var vatSwitch: UISwitch!
    @IBOutlet weak var rightView: UIView!
    @IBOutlet weak var unitStackView: UIStackView!
    @IBOutlet weak var unitBuy1StackView: UIStackView!
    @IBOutlet weak var unitBuy2StackView: UIStackView!
    
    var tableView = UITableView()
    var dropDownButton = UIButton()
    var stackView = UIStackView()
    var pageStackView: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiBorderButton(categoryProductBtn)
        uiBorderButton(vatProductBtn)
        uiBorderButton(unitProductBtn)
        uiBorderButton(unitBuy1Btn)
        uiBorderButton(unitBuy2Btn)
        
        productCodeTextField.addTarget(self, action: #selector(checkTextField(_:)), for: .touchDown)
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapView(gesture:)))
        view.addGestureRecognizer(tapGesture)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
        // Do any additional setup after loading the view.
    }
    
    //MARK: - func
    
    @objc func didTapView(gesture: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if ((notification.userInfo?[UIResponder.keyboardFrameBeginUserInfoKey] as? NSValue)?.cgRectValue) != nil {
//            if useTextField.frame.origin.y < 0 {
//               self.view.frame.origin.y -= 250
//            }
            
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= 250
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    @objc func checkTextField(_ textField: UITextField) {
        useTextField = textField
    }
    
    
    func clearButton() {
        uiClearCheckBox(onDiscountBtn)
        uiClearCheckBox(cutStockBtn)
        uiClearCheckBox(usePointBtn)
        uiClearCheckBox(usePromotionBtn)
        uiClearCheckBox(canSaleBtn)
        uiClearCheckBox(kioskSaleBtn)
    }
    
    func checkSelectCheckbox(_ button: UIButton) {
        uiCheckBox(button)
    }
    
    func callPopover(_ sender: UIButton) {
        let vc = PopoverViewController()
        vc.modalPresentationStyle = .popover
        vc.preferredContentSize = CGSize(width: sender.frame.width, height: 150)
        vc.delegate = self
        present(vc, animated: true, completion: nil)
        
        let popoverPresentationController = vc.popoverPresentationController
        popoverPresentationController?.sourceView = sender
        popoverPresentationController?.permittedArrowDirections = [.up, .down]
        popoverPresentationController?.sourceRect = CGRect(x: 0, y: 0, width: sender.frame.size.width, height: sender.frame.size.height)
    }
    
    //MARK: - @IBAction
    @IBAction func createVatBtnTap(_ sender: Any) {
        let sb = UIStoryboard(name: "Product", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "vatPopup") as! CreateVatPopupViewController
        present(vc, animated: true, completion: nil)
    }
    
    @IBAction func categoryProductBtnTap(_ sender: Any) {
        dropDownButton = categoryProductBtn
        callPopover(categoryProductBtn)
    }
    
    @IBAction func vatProductBtnTap(_ sender: Any) {
        dropDownButton = vatProductBtn
        callPopover(vatProductBtn)
    }
    
    @IBAction func unitProductBtnTap(_ sender: Any) {
        dropDownButton = unitProductBtn
        callPopover(unitProductBtn)
    }
    
    @IBAction func unitBuy1BtnTap(_ sender: Any) {
       dropDownButton = unitBuy1Btn
        callPopover(unitBuy1Btn)
    }
    
    @IBAction func unitBuy2BtnTap(_ sender: Any) {
        dropDownButton = unitBuy2Btn
        callPopover(unitBuy2Btn)
    }
    
    @IBAction func createUnitBtnTap(_ sender: Any) {
          uiCreateUnitPopup("createUnit")
    }
    @IBAction func createUnitBuy1BtnTap(_ sender: Any) {
       uiCreateUnitPopup("unitBuy1")
    }
    
    @IBAction func createUnitBuy2BtnTap(_ sender: Any) {
       uiCreateUnitPopup("unitBuy2")
    }
    
    @IBAction func onDiscountbtnTap(_ sender: Any) {
        clearButton()
        checkSelectCheckbox(onDiscountBtn)
    }
    
    @IBAction func cutStockBtnTap(_ sender: Any) {
        clearButton()
        checkSelectCheckbox(cutStockBtn)
    }
    
    @IBAction func usePointBtnTap(_ sender: Any) {
        clearButton()
        checkSelectCheckbox(usePointBtn)
    }
    
    @IBAction func usePromotionBtnTap(_ sender: Any) {
        clearButton()
        checkSelectCheckbox(usePromotionBtn)
    }
    
    @IBAction func canSaleBtnTap(_ sender: Any) {
        clearButton()
        checkSelectCheckbox(canSaleBtn)
    }
    
    @IBAction func kioskSaleBtnTap(_ sender: Any) {
        clearButton()
        checkSelectCheckbox(kioskSaleBtn)
    }
    
    @IBAction func saveBtnTap(_ sender: Any) {
    }
    
    //MARK: - ui
    func uiBorderButton(_ button: UIButton) {
        button.layer.cornerRadius = 5
        button.layer.borderWidth = 1.0
        button.layer.borderColor = UIColor(red:0.89, green:0.89, blue:0.89, alpha:1.0).cgColor
        
    }
    
    func uiClearCheckBox(_ button: UIButton) {
        button.setImage(UIImage(named: "disSelectItem.png"), for: .normal)
    }
    
    func uiCheckBox(_ button: UIButton) {
        button.setImage(UIImage(named: "check_image.png"), for: .normal)
    }
    
    func uiCreateUnitPopup(_ nameButon: String) {
        let sb = UIStoryboard(name: "Product", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "unitPopup") as! CreateUnitPopupViewController
        vc.buttonName = nameButon
        present(vc, animated: true, completion: nil)
    }

}

extension CreateProductViewController: popoverDelegate {
    
    func selectedPopup(_ value: String) {
        dropDownButton.setTitle(value, for: .normal)
        dropDownButton.setTitleColor(.black, for: .normal)
    }
    
    
}

