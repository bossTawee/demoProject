//
//  PaymentPopupViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 6/12/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class PaymentPopupViewController: UIViewController {

    @IBOutlet weak var titleView: UIView!
    @IBOutlet weak var PayView: UIView!
    @IBOutlet weak var leftView: UIView! {
        didSet {
            self.leftView.layer.cornerRadius = 5
            self.leftView.layer.borderWidth = 1
            self.leftView.layer.borderColor = UIColor.bgGray.cgColor
                   
        }
    }
    @IBOutlet weak var rightView: UIView!{
        didSet {
            self.rightView.layer.cornerRadius = 5
            self.rightView.layer.borderWidth = 1
            self.rightView.layer.borderColor = UIColor.bgGray.cgColor
        }
    }
    
    @IBOutlet weak var paymentLabel: UILabel!
    @IBOutlet weak var costPaymentLabel: UILabel!{
        didSet {
            self.costPaymentLabel.layer.cornerRadius = 5
            self.costPaymentLabel.layer.borderWidth = 1
            self.costPaymentLabel.layer.borderColor = UIColor.bgGray.cgColor
        }
    }
    
    @IBOutlet weak var clearCostPaymentBtn: UIButton!
    @IBOutlet weak var enoughtPaymentBtn: UIButton!
    @IBOutlet weak var cashButton: UIButton!
    @IBOutlet weak var creditCardButton: UIButton!
    @IBOutlet weak var otherPaymentButton: UIButton!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleView.topRounds(cornerRadius: 5)
        cashButton.topRound(cornerRadius: 5)
        creditCardButton.topRound(cornerRadius: 5)
        otherPaymentButton.topRound(cornerRadius: 5)
        loadNumPad()
    }
    
    @IBAction func clearCostPaymentBtnTap(_ sender: Any) {
        
    }
    @IBAction func enoughtPaymentBtnTap(_ sender: Any) {
           
    }
    @IBAction func cashButtonTap(_ sender: Any) {
        clearSubView()
        loadNumPad()
           
    }
    @IBAction func creditCardButtonTap(_ sender: Any) {
        clearSubView()
        loadCreditCard()
           
    }
    @IBAction func otherPaymentButtonTap(_ sender: Any) {
           
    }
    @IBAction func saveButtonTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func cancelButtonTap(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    func loadNumPad() {
        let sb = UIStoryboard(name: "Order", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "numpad") as! NumPadViewController
        let frameWidth = PayView.frame.width
        let frameHeight = PayView.frame.height
        let contentFrame = CGRect(x: 0, y: 0, width: frameWidth, height: frameHeight)
        vc.view.frame = contentFrame
        self.addChild(vc)
        self.PayView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
    func loadCreditCard() {
        let sb = UIStoryboard(name: "Order", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "creditCard") as! CreditCardViewController
        let frameWidth = PayView.frame.width
        let frameHeight = PayView.frame.height
        let contentFrame = CGRect(x: 0, y: 0, width: frameWidth, height: frameHeight)
        vc.view.frame = contentFrame
        self.addChild(vc)
        self.PayView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
    func clearSubView() {
        for subview in PayView.subviews {
            subview.removeFromSuperview()
            
        }
    }

}
