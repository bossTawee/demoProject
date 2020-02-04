//
//  AddressMenberViewController.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 4/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class AddressMenberViewController: UIViewController {
    
    //MARK: instance
    var state: String?
    
    //MARK: view
    var topView: MemberView = {
        let view = MemberView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var underView: AddressView = {
        let view = AddressView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var footerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    //MARK: button
    var createButton: UIButton = {
        let b = UIButton()
        b.backgroundColor = UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0)
        b.layer.cornerRadius = 5
        b.setTitle("เพิ่มข้อมูล", for: .normal)
        b.setTitleColor(.white, for: .normal)
        b.titleLabel?.font = UIFont(name: "Kanit", size: 20)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    var saveButton: UIButton = {
        let b = UIButton()
        b.backgroundColor = UIColor(red:0.17, green:0.58, blue:0.00, alpha:1.0)
        b.layer.cornerRadius = 5
        b.setTitle("บันทึก", for: .normal)
        b.setTitleColor(.white, for: .normal)
        b.titleLabel?.font = UIFont(name: "Kanit", size: 20)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    var deleteButton: UIButton = {
        let b = UIButton()
        b.backgroundColor = .systemRed
        b.layer.cornerRadius = 5
        b.setTitle("ลบ", for: .normal)
        b.setTitleColor(.white, for: .normal)
        b.titleLabel?.font = UIFont(name: "Kanit", size: 20)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    //MARK: stackview
    lazy var stackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.createButton,self.saveButton,self.deleteButton])
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 16
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    //MARK: viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red:0.90, green:0.90, blue:0.90, alpha:1.0)
        
        setupView()
        
    }
    
    //MARK: func
    func setupView() {
        view.addSubview(topView)
        view.addSubview(underView)
        view.addSubview(footerView)
        footerView.addSubview(stackView)
        
        view.addConstraintWithFormat(format: "H:|-8-[v0]-8-|", views: topView)
        view.addConstraintWithFormat(format: "H:|-8-[v0]-8-|", views: underView)
        view.addConstraintWithFormat(format: "H:|-8-[v0]-8-|", views: footerView)
        view.addConstraintWithFormat(format: "V:|-8-[v0(216)]-4-[v1]-4-[v2(64)]-8-|", views: topView,underView,footerView)
        
        footerView.addConstraintWithFormat(format: "H:|-8-[v0(520)]", views: stackView)
        footerView.addConstraintWithFormat(format: "V:|-8-[v0]-8-|", views: stackView)
    }
    
    
//    func notificationCreated() {
//        NotificationCenter.default.addObserver(self,
//                                               selector: #selector(receiveNotification(notification:)),
//                                               name: .create, object: nil)
//       }
//
//    @objc func receiveNotification(notification: Notification) {
//        let member = notification.object as! MemberViewController
//        print("asdfg: \(self.state)")
//    }
    
}

extension Notification.Name {
    static let create = Notification.Name(rawValue: "create")
}
