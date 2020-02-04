//
//  CreateStockViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 21/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class CreateStockViewController: UIViewController, UIPopoverPresentationControllerDelegate {
    
    //MARK: - instance
    
    //MARK: - @IBOutlet
    @IBOutlet weak var numWayBillTextField: UITextField!
    @IBOutlet weak var numReceiveProductTextField: UITextField!
    @IBOutlet weak var taxInvoiceTextField: UITextField!
    
    @IBOutlet weak var deliveryDateButton: UIButton!
    @IBOutlet weak var dealerButton: UIButton!
    @IBOutlet weak var addDealerButton: UIButton!
    @IBOutlet weak var storeButton: UIButton!
    @IBOutlet weak var addStoreButton: UIButton!
    @IBOutlet weak var receiveDateButton: UIButton!
    @IBOutlet weak var statusButton: UIButton!
    
    @IBOutlet weak var contentView: UIView! {
        didSet {
            contentView.layer.shadowColor = UIColor.black.cgColor
            contentView.layer.shadowOffset = CGSize(width: 0, height: 1.0)
            contentView.layer.shadowOpacity = 0.2
            contentView.layer.shadowRadius = 4.0
        }
    }
    
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        self.modalTransitionStyle = .crossDissolve
        popoverPresentationController?.delegate = self
        
        deliveryDateButton.borderButton()
        dealerButton.borderButton()
        addDealerButton.borderButton()
        storeButton.borderButton()
        addStoreButton.borderButton()
        receiveDateButton.borderButton()
        statusButton.borderButton()
        
    }
    
    @objc func dismissVC() {
        if let navigator = navigationController {
            navigator.popViewController(animated: true)
        }
        
    }
    
    //MARK: - func
    func openCreateDealerViewController() {
        let sb = UIStoryboard(name: "Stock", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "dealerPopup") as! CreateDealerPopupViewController
        present(vc, animated: true, completion: nil)
    }
    
     func openCreateStoreViewController() {
        let vc = CreateStoreViewController()
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overCurrentContext
        present(vc, animated: true, completion: nil)
    }
    
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
    
    @IBAction func dealerBtnTap(_ sender: Any) {
        openCreateDealerViewController()
    }
    @IBAction func addDealerBtnTap(_ sender: Any) {
        openCreateDealerViewController()
    }
    @IBAction func storeBtnTap(_ sender: Any) {
        openCreateStoreViewController() 
    }
    @IBAction func addStoreBtnTap(_ sender: Any) {
        openCreateStoreViewController()
    }
    @IBAction func receiveDateBtnTap(_ sender: Any) {
        
    }
    @IBAction func statusBtnTap(_ sender: Any) {
        callPopover(statusButton)
    }
    @IBAction func deliveryDateButtonTap(_ sender: Any) {
           
    }
    
}

extension CreateStockViewController: popoverDelegate {
    
    func selectedPopup(_ value: String) {
        statusButton.setTitle(value, for: .normal)
        statusButton.setTitleColor(.black, for: .normal)
    }
    
}
