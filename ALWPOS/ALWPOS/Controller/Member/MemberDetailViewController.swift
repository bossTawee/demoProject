//
//  MemberDetailViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 12/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class MemberDetailViewController: UIViewController {
    
    //MARK: instance
    var onTextField = UITextField()
    
    //MARK: outlet
    lazy var menuBarView: Menubar = {
        let view = Menubar()
//        view.infoViewController = self
        view.member = self
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var scrollView: UIScrollView = {
        let sc = UIScrollView()
        sc.backgroundColor = .white
        return sc
    }()
    
    var contentView: UIView = {
        let v = UIView ()
        v.backgroundColor = .systemGreen
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    //MARK: override
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "MEMBER"
        view.backgroundColor = UIColor(red:0.90, green:0.90, blue:0.90, alpha:1.0)
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(viewTapped(gestureRecognize:)))
        scrollView.addGestureRecognizer(tapGesture)
        setupView()
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.addObserver()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        self.removeObserver()
    }
    
    @objc func addMemberBtnTap() {
        print("add")
        navigationController?.popViewController(animated: true)
    }
    @objc func saveMemberBtnTap() {
        print("save")
        navigationController?.popViewController(animated: true)
    }
    @objc func deleteMemberBtnTap() {
        print("delete")
        navigationController?.popViewController(animated: true)
    }
    @objc func createCategoryBtnTap() {
        let vc = CategoryMemberViewController()
        if let navigator = navigationController {
            navigator.pushViewController(vc, animated: true)
        }
    }
    @objc func keyboardWillShow(notification: NSNotification) {
        let userInfo = notification.userInfo!
        let keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        let contentInset = UIEdgeInsets(top:0, left: 0, bottom: keyboardFrame.height, right: 0)
        scrollView.contentInset = contentInset
    }
    @objc func keyboardWillHide(notification: NSNotification) {
       scrollView.contentInset = UIEdgeInsets.zero
    }
    @objc func setTextField(_ textField: UITextField) {
        print(textField)
        onTextField = textField
    }
    @objc func viewTapped(gestureRecognize: UIGestureRecognizer) {
        view.endEditing(true)
    }
    
    //MARK: func
    func setupView() {
        view.addSubview(menuBarView)
        view.addSubview(scrollView)
        let top = (self.navigationController?.navigationBar.frame.height)! + 20
        let tabbarBottom = self.tabBarController?.tabBar.frame.height
        
        menuBarView.anchor(top: view.topAnchor, leading: view.leadingAnchor,
                           trailing: view.trailingAnchor, bottom: nil,
                           padding: .init(top: top, left: 0, bottom: 0, right: 0),
                           size: .init(width: 0, height: 62))
        scrollView.anchor(top: menuBarView.bottomAnchor, leading: view.leadingAnchor,
                           trailing: view.trailingAnchor, bottom: view.bottomAnchor,
                           padding: .init(top: 0, left: 0, bottom: tabbarBottom!, right: 0),
                           size: .init(width: view.frame.width, height: view.frame.height - 62))
           
    }
    
    func addObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func removeObserver() {
        NotificationCenter.default.removeObserver(self)
    }
    
    func checkIndex(num: Int) {
        if num == 0 {
            uiShowAddressMember()
        } else if num == 1 {
            uiShowPurchaseHistory()
        } else if num == 2 {
            uiShowHistoryPoint()
        }
    }
    
    //MARK: ui
    
    func uiShowAddressMember() {
        let vc1 = AddressMenberViewController()
        let contentWidth = scrollView.bounds.width
        let contentHeight = scrollView.bounds.height
        let contentFrame = CGRect(x: 0, y: 0, width: Int(contentWidth), height: Int(contentHeight))
        scrollView.contentSize = CGSize(width: contentWidth, height: contentHeight)
        vc1.createButton.addTarget(self, action: #selector(addMemberBtnTap), for: .touchUpInside)
        vc1.saveButton.addTarget(self, action: #selector(saveMemberBtnTap), for: .touchUpInside)
        vc1.deleteButton.addTarget(self, action: #selector(deleteMemberBtnTap), for: .touchUpInside)
        vc1.view.frame = contentFrame
        self.addChild(vc1)
        self.scrollView.addSubview(vc1.view)
    }
    func uiShowPurchaseHistory() {
        let vc1 = PurchaseHistoryViewController()
        let contentWidth = scrollView.bounds.width
        let contentHeight = scrollView.bounds.height
        let contentFrame = CGRect(x: 0, y: 0, width: Int(contentWidth), height: Int(contentHeight))
        scrollView.contentSize = CGSize(width: contentWidth, height: contentHeight)
        vc1.view.frame = contentFrame
        self.addChild(vc1)
        self.scrollView.addSubview(vc1.view)
    }
    func uiShowHistoryPoint() {
        let vc1 = PointHistoryViewController()
        let contentWidth = scrollView.bounds.width
        let contentHeight = scrollView.bounds.height
        let contentFrame = CGRect(x: 0, y: 0, width: Int(contentWidth), height: Int(contentHeight))
        scrollView.contentSize = CGSize(width: contentWidth, height: contentHeight)
        vc1.view.frame = contentFrame
        self.addChild(vc1)
        self.scrollView.addSubview(vc1.view)
    }
    

}
