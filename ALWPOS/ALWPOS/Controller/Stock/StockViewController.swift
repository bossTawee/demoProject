//
//  StockViewController.swift
//  ALWPOS
//
//  Created by Hive on 10/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

@available(iOS 13.0, *)
class StockViewController: UIViewController {
    
    //MARK: - @IBoutlet
    @IBOutlet weak var receiveStockButton: UIButton! {
        didSet {
            self.receiveStockButton.topRound(cornerRadius: 5)
        }
    }
    @IBOutlet weak var withdrawStockButton: UIButton! {
        didSet {
            self.withdrawStockButton.topRound(cornerRadius: 5)
        }
    }
    @IBOutlet weak var contentView: UIView!
    
    let scrollView = UIScrollView()
    
    //MARK: - init
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setNavigationBarItem(titlePageName: "สต็อค")
//        contentView.addSubview(scrollView)
//        scrollView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        
        uiReceiveStockViewController()
    }
    
    //MARK: - @IBAction
    @IBAction func receiveBtnTap(_ sender: Any) {
        checkButton(receiveStockButton)
        clearSubView()
        uiReceiveStockViewController()
    }
    
    @IBAction func withdrawBtnTap(_ sender: Any) {
        checkButton(withdrawStockButton)
        clearSubView()
        uiWithdrawStockViewController()
    }
    
    //MARK: - func
    func clearSubView() {
        for subview in contentView.subviews {
            subview.removeFromSuperview()
        }
    }
    
    func checkButton(_ button: UIButton) {
        uiClearButton()
        uiSelectedButton(button)
    }
    
    //MARK: - ui
    func uiReceiveStockViewController() {
        let sb = UIStoryboard(name: "Stock", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "receiveStock") as! ReceiveStockViewController
        let width = contentView.bounds.width
        let height = contentView.bounds.height
        let frames = CGRect(x: 0, y: 0, width: width, height: height)
        vc.view.frame = frames
        self.addChild(vc)
        self.contentView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
    func uiWithdrawStockViewController() {
        let sb = UIStoryboard(name: "Stock", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "withdraw") as! WithdrawStockViewController
        let width = contentView.bounds.width
        let height = contentView.bounds.height
        let frames = CGRect(x: 0, y: 0, width: width, height: height)
        vc.view.frame = frames
        self.addChild(vc)
        self.contentView.addSubview(vc.view)
        vc.didMove(toParent: self)
    }
    
    func uiClearButton() {
        receiveStockButton.backgroundColor = UIColor.init(hex: "0xE6E6E6")
        receiveStockButton.setTitleColor(.black, for: .normal)
        withdrawStockButton.backgroundColor = UIColor.init(hex: "0xE6E6E6")
        withdrawStockButton.setTitleColor(.black, for: .normal)
    }
    
    func uiSelectedButton(_ button: UIButton) {
        button.backgroundColor = UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0)
        button.setTitleColor(.white, for: .normal)
    }
    
    //MARK: - scrollViewTest
    
    
    
}
