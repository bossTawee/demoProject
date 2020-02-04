//
//  CreateWithDrawStockViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 22/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class CreateWithDrawStockViewController: UIViewController {
    
    //MARK: - instance
    var popoverButton = UIButton()
    
    //MARK: - @IBOutlet
    @IBOutlet weak var numberWithdrawTextField: UITextField!
    @IBOutlet weak var titleWithdrawTextField: UITextField!
    
    @IBOutlet weak var dateWithdrawButton: UIButton!
    @IBOutlet weak var storeWithdrawButton: UIButton!
    @IBOutlet weak var stateWithdrawButton: UIButton!
    @IBOutlet weak var kindWithdrawButton: UIButton!
    
    @IBOutlet weak var detailView: UIView!{
           didSet {
               self.detailView.layer.borderWidth = 1
               self.detailView.layer.borderColor = UIColor(red:0.89, green:0.89, blue:0.89, alpha:1.0).cgColor
           }
       }
    @IBOutlet weak var contentView: UIView!{
        didSet {
            contentView.layer.shadowColor = UIColor.black.cgColor
            contentView.layer.shadowOffset = CGSize(width: 0, height: 1.0)
            contentView.layer.shadowOpacity = 0.2
            contentView.layer.shadowRadius = 4.0
        }
    }
    
    //MARK: -  viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        dateWithdrawButton.borderButton()
        storeWithdrawButton.borderButton()
        stateWithdrawButton.borderButton()
        kindWithdrawButton.borderButton()
        
    }
    
    @objc func dismissVC() {
       if let naviagtor = navigationController {
            naviagtor.popViewController(animated: true)
        }
        
    }
    
    //MARK: - func
    func callPopover(_ sender: UIButton) {
        let vc = PopoverViewController()
        vc.modalPresentationStyle = .popover
        vc.preferredContentSize = CGSize(width: sender.frame.width, height: 200)
        vc.delegate = self
        present(vc, animated: true, completion: nil)
        
        let popoverPresentationController = vc.popoverPresentationController
        popoverPresentationController?.sourceView = sender
        popoverPresentationController?.permittedArrowDirections = [.up, .down]
        popoverPresentationController?.sourceRect = CGRect(x: 0, y: 0, width: sender.frame.size.width, height: sender.frame.size.height)
    }
    
    //MARK: - @IBAction
    @IBAction func saveBtnTap(_ sender: Any) {
        dismissVC()
    }
    
    @IBAction func dateWithdrawButtonTap(_ sender: Any) {
       
    }
    
    @IBAction func storeWithdrawButtonTap(_ sender: Any) {
        self.popoverButton = storeWithdrawButton
        callPopover(storeWithdrawButton)
    }
    
    @IBAction func stateWithdrawButtonTap(_ sender: Any) {
        self.popoverButton = stateWithdrawButton
        callPopover(stateWithdrawButton)
    }
    
    @IBAction func kindWithdrawButtonTap(_ sender: Any) {
        self.popoverButton = kindWithdrawButton
        callPopover(kindWithdrawButton)
    }
    
    //MARK: - ui
    func uiButton(_ button: UIButton, title: String) {
        button.setTitle(title, for: .normal)
        button.setTitleColor(.black, for: .normal)
    }

}
extension CreateWithDrawStockViewController: popoverDelegate {
    
    func selectedPopup(_ value: String) {
        if popoverButton == storeWithdrawButton {
            uiButton(storeWithdrawButton, title: value)
        } else if popoverButton == stateWithdrawButton {
            uiButton(stateWithdrawButton, title: value)
        } else {
            uiButton(kindWithdrawButton, title: value)
        }
    }
}
