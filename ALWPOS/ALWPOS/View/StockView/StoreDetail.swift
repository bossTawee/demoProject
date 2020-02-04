//
//  StoreDetail.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 26/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import Foundation
import UIKit

class StoreDtail: UIView {
    
    var storeDetailLabel: UILabel = {
        let label = UILabel()
        label.blueLabel(text: "รายละเอียดสต๊อค", fontSize: 16)
        return label
    }()
    
    var codeLabel: UILabel = {
        let label = UILabel()
        label.blackLabel(text: "รหัสสต๊อค", fontSize: 14)
        return label
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.blackLabel(text: "ชื่อสต๊อค", fontSize: 14)
        return label
    }()
    
    var codeTextField: UITextField = {
        let textField = UITextField()
        textField.setupTextField()
        textField.placeholder = "รหัสสต๊อค"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var nameTextField: UITextField = {
        let textField = UITextField()
        textField.setupTextField()
        textField.placeholder = "ชื่อสต๊อค"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var codeView: UIView = {
        let view = UIView()
        return view
    }()
    
    var nameView: UIView = {
        let view = UIView()
        return view
    }()
    
    var seperateView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red:0.89, green:0.89, blue:0.89, alpha:1.0)
        return view
    }()
    
    var createStoreButton: UIButton = {
        let button = UIButton()
        button.setTitle("เพิ่ม", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0)
        button.layer.cornerRadius = 5
        button.titleLabel?.font = UIFont(name: "Kanit", size: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    //MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    
    
    
    //MARK: - func
    func setupView() {
        addSubview(storeDetailLabel)
        addSubview(createStoreButton)
        addSubview(codeView)
        addSubview(nameView)
        addSubview(seperateView)
        setCodeView()
        setNameView()
        storeDetailLabel.anchor(top: topAnchor, leading: leadingAnchor, trailing: trailingAnchor, bottom: nil,
                                padding: .init(top: 0, left: 16, bottom: 0, right: 16))
        
        //createStoreButton
        createStoreButton.anchor(top: storeDetailLabel.bottomAnchor, leading: nil,
                                        trailing: self.trailingAnchor, bottom: nil,
                                        padding: .init(top: 12, left: 0, bottom: 0, right: 8),
                                        size: .init(width: 80, height: 80))
        
        //codeview
        codeView.anchor(top: storeDetailLabel.bottomAnchor, leading: self.leadingAnchor,
                        trailing: createStoreButton.leadingAnchor, bottom: nil,
                        padding: .init(top: 8, left: 16, bottom: 0, right: 8),
                        size: .init(width: 390, height: 40))
        //nameview
        nameView.anchor(top: codeView.bottomAnchor, leading: self.leadingAnchor,
                        trailing: createStoreButton.leadingAnchor, bottom: nil,
                        padding: .init(top: 8, left: 16, bottom: 0, right: 8),
                        size: .init(width: 390, height: 40))
        //seperateview
        seperateView.anchor(top: nil, leading: leadingAnchor, trailing: trailingAnchor, bottom: bottomAnchor,
                            padding: .init(top: 0, left: 16, bottom: 1, right: 16),
                            size: .init(width: 0, height: 1))
       
    }
    
    func setCodeView() {
        codeView.addSubview(codeLabel)
        codeView.addSubview(codeTextField)
        
        addConstraintWithFormat(format: "H:|[v0(100)]-8-[v1]|", views: codeLabel,codeTextField)
        addConstraintWithFormat(format: "V:|[v0]|", views: codeLabel)
        addConstraintWithFormat(format: "V:|[v0]|", views: codeTextField)
    }
    
    func setNameView() {
        nameView.addSubview(nameLabel)
        nameView.addSubview(nameTextField)
        
        addConstraintWithFormat(format: "H:|[v0(100)]-8-[v1]|", views: nameLabel,nameTextField)
        addConstraintWithFormat(format: "V:|[v0]|", views: nameLabel)
        addConstraintWithFormat(format: "V:|[v0]|", views: nameTextField)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
