//
//  MemberView.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 4/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import Foundation
import UIKit

class MemberView: UIView {
    
    //textfield
    var codeMemberTextField: UITextField = {
        let textField = UITextField()
        textField.setupTextField()
        textField.placeholder = "รหัสลูกค้า"
        textField.clearButtonMode = .whileEditing
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    var firstNameTextField: UITextField = {
        let tf = UITextField()
        tf.setupTextField()
        tf.placeholder = "ชื่อจริง"
        tf.clearButtonMode = .whileEditing
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    var lastNametextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "นามสกุล"
        tf.setupTextField()
        tf.clearButtonMode = .whileEditing
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    var nickNametextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "ชื่อเล่น"
        tf.setupTextField()
        tf.clearButtonMode = .whileEditing
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    var emailtextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "EMAIL"
        tf.setupTextField()
        tf.clearButtonMode = .whileEditing
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    var birthDayTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "วันเกิด"
        tf.setupTextField()
        tf.clearButtonMode = .whileEditing
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    
    //button
    var customerType: UIButton = {
        let button = UIButton()
        button.borderButton()
        button.leftButton()
        button.setTitle("ประเภทลูกค้า", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.titleLabel?.font = UIFont(name: "Kanit", size: 14)
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var createCustomerType: UIButton = {
        let button = UIButton()
        button.setImage(UIImage.init(named: "icon_Edit"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var prefixButton: UIButton = {
        let button = UIButton()
        button.borderButton()
        button.leftButton()
        button.setTitle("คำนำหน้า", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.titleLabel?.font = UIFont(name: "Kanit", size: 14)
        button.titleLabel?.textAlignment = .center
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var birthDayButton: UIButton = {
        let button = UIButton()
        button.borderButton()
        button.leftButton()
        button.setTitle("วันเกิด", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.backgroundColor = .white
        button.titleLabel?.font = UIFont(name: "Kanit", size: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var genderButton: UIButton = {
        let button = UIButton()
        button.borderButton()
        button.leftButton()
        button.setTitle("เพศ", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.backgroundColor = .white
        button.titleLabel?.font = UIFont(name: "Kanit", size: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
       }()
    
    //label
    var codeLabel: UILabel = {
        let lb = UILabel()
        lb.blackLabel(text: "รหัสลูกค้า", fontSize: 16)
        return lb
    }()
    var typeLabel: UILabel = {
        let lb = UILabel()
        lb.blackLabel(text: "ประเภทลกค้า", fontSize: 16)
        return lb
    }()
    var prefixLabel: UILabel = {
        let lb = UILabel()
        lb.blackLabel(text: "คำนำหน้า", fontSize: 16)
        return lb
    }()
    var surNameLabel: UILabel = {
        let lb = UILabel()
        lb.blackLabel(text: "ชื่อจริง", fontSize: 16)
        return lb
    }()
    var lastNameLabel: UILabel = {
        let lb = UILabel()
        lb.blackLabel(text: "นามสกุล", fontSize: 16)
        return lb
    }()
    var nickNameLabel: UILabel = {
        let lb = UILabel()
        lb.blackLabel(text: "ชื่อเล่น", fontSize: 16)
        return lb
    }()
    var birthdayLabel: UILabel = {
        let lb = UILabel()
        lb.blackLabel(text: "วันเกิด", fontSize: 16)
        return lb
    }()
    var emailLabel: UILabel = {
        let lb = UILabel()
        lb.blackLabel(text: "Email:", fontSize: 16)
        return lb
    }()
    var genderLabel: UILabel = {
        let lb = UILabel()
        lb.blackLabel(text: "เพศ", fontSize: 16)
        return lb
    }()
    
    //view
    var customerView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    var nameView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    var birthView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    var emailView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    var imageView: UIView = {
        let v = UIView()
        v.backgroundColor = .white
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    var spaceView: UIView = {
        let v = UIView()
//        v.backgroundColor = UIColor(red:0.89, green:0.89, blue:0.89, alpha:1.0)
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    
    //imageView
    var image: UIImageView = {
        let mv = UIImageView()
        mv.image = UIImage(named: "Icon_addImage")
        mv.translatesAutoresizingMaskIntoConstraints = false
        return mv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        addSubview(imageView)
        addSubview(customerView)
        addSubview(nameView)
        addSubview(birthView)
        addSubview(emailView)
        addSubview(spaceView)
        
        setImageView()
        firstCustomerView()
        secondCustomView()
        thirdCustomView()
        fourthCustomerView()
        
        addConstraintWithFormat(format: "H:|[v0(220)][v1]|", views: imageView, customerView)
        addConstraintWithFormat(format: "H:|[v0(220)][v1]|", views: imageView, nameView)
        addConstraintWithFormat(format: "H:|[v0(220)][v1]|", views: imageView, birthView)
        addConstraintWithFormat(format: "H:|[v0(220)][v1]|", views: imageView, emailView)
        addConstraintWithFormat(format: "H:|-16-[v0]-16-|", views: spaceView)
        
        addConstraintWithFormat(format: "V:|[v0(200)]", views: imageView)
        addConstraintWithFormat(format: "V:|[v0(50)][v1(50)][v2(50)][v3(50)][v4(1)]", views: customerView,nameView,birthView,emailView,spaceView)
        
    }
    
    func setImageView() {
        imageView.addSubview(image)
        image.anchor(top: imageView.topAnchor, leading: imageView.leadingAnchor,
                     trailing: imageView.trailingAnchor, bottom: imageView.bottomAnchor,
                     padding: .init(top: 5, left: 8, bottom: 5, right: 8))
    }
    
    func firstCustomerView() {
        customerView.addSubview(codeLabel)
        customerView.addSubview(typeLabel)
        customerView.addSubview(codeMemberTextField)
        customerView.addSubview(customerType)
        customerView.addSubview(createCustomerType)
        
        codeLabel.anchor(top: customerView.topAnchor, leading: customerView.leadingAnchor,
                         trailing: nil, bottom: nil,
                         padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                         size: .init(width: 80, height: 40))
        typeLabel.anchor(top: customerView.topAnchor, leading: codeMemberTextField.trailingAnchor,
                         trailing: nil, bottom: nil,
                         padding: .init(top: 5, left: 16 , bottom: 0, right: 0),
                         size: .init(width: 100, height: 40))
        codeMemberTextField.anchor(top: customerView.topAnchor, leading: codeLabel.trailingAnchor, trailing: nil, bottom: nil,
                                   padding: .init(top: 5, left: 8, bottom: 0, right: 0),
                                   size: .init(width: 200, height: 40))
        customerType.anchor(top: customerView.topAnchor, leading: typeLabel.trailingAnchor,
                            trailing: nil, bottom: nil,
                            padding: .init(top: 5, left: 8, bottom: 0, right: 0),
                            size: .init(width: 200, height: 40))
        createCustomerType.anchor(top: customerView.topAnchor, leading: customerType.trailingAnchor,
                                  trailing: nil, bottom: nil,
                                  padding: .init(top: 5, left: 8, bottom: 0, right: 0),
                                  size: .init(width: 30, height: 30))
    }
    
    func secondCustomView() {
        nameView.addSubview(prefixButton)
        nameView.addSubview(firstNameTextField)
        nameView.addSubview(lastNametextField)
        nameView.addSubview(prefixLabel)
        nameView.addSubview(surNameLabel)
        nameView.addSubview(lastNameLabel)
        
        prefixLabel.anchor(top: nameView.topAnchor, leading: nameView.leadingAnchor,
                           trailing: nil, bottom: nil,
                           padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                           size: .init(width: 80, height: 40))
        prefixButton.anchor(top: nameView.topAnchor, leading: prefixLabel.trailingAnchor,
                            trailing: nil, bottom: nil,
                            padding: .init(top: 5, left: 8, bottom: 0, right: 0),
                            size: .init(width: 100, height: 40))
        surNameLabel.anchor(top: nameView.topAnchor, leading: prefixButton.trailingAnchor,
                            trailing: nil, bottom: nil,
                            padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                            size: .init(width: 60, height: 40))
        firstNameTextField.anchor(top: nameView.topAnchor, leading: surNameLabel.trailingAnchor,
                                  trailing: nil, bottom: nil,
                                  padding: .init(top: 5, left: 8, bottom: 0, right: 0),
                                  size: .init(width: 200, height: 40))
        lastNameLabel.anchor(top: nameView.topAnchor, leading: firstNameTextField.trailingAnchor,
                             trailing: nil, bottom: nil,
                             padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                             size: .init(width: 60, height: 40))
        lastNametextField.anchor(top: nameView.topAnchor, leading: lastNameLabel.trailingAnchor,
                                 trailing: nil, bottom: nil,
                                 padding: .init(top: 5, left: 8, bottom: 0, right: 0),
                                 size: .init(width: 200, height: 40))
    }
    
    func thirdCustomView() {
        birthView.addSubview(nickNameLabel)
        birthView.addSubview(nickNametextField)
        birthView.addSubview(birthdayLabel)
        birthView.addSubview(birthDayTextField)
        
        nickNameLabel.anchor(top: birthView.topAnchor, leading: birthView.leadingAnchor,
                             trailing: nil, bottom: nil,
                             padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                             size: .init(width: 80, height: 40))
        nickNametextField.anchor(top: birthView.topAnchor, leading: nickNameLabel.trailingAnchor,
                                 trailing: nil, bottom: nil,
                                 padding: .init(top: 5, left: 8, bottom: 0, right: 0),
                                 size: .init(width: 100, height: 40))
        birthdayLabel.anchor(top: birthView.topAnchor, leading: nickNametextField.trailingAnchor,
                             trailing: nil, bottom: nil,
                             padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                             size: .init(width: 60, height: 40))
        birthDayTextField.anchor(top: birthView.topAnchor, leading: birthdayLabel.trailingAnchor,
                              trailing: nil, bottom: nil,
                              padding: .init(top: 5, left: 8, bottom: 0, right: 0),
                              size: .init(width: 200, height: 40))
    }
    
    func fourthCustomerView() {
        emailView.addSubview(genderLabel)
        emailView.addSubview(genderButton)
        emailView.addSubview(emailLabel)
        emailView.addSubview(emailtextField)
        
        genderLabel.anchor(top: emailView.topAnchor, leading: emailView.leadingAnchor,
                           trailing: nil, bottom: nil,
                           padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                           size: .init(width: 80, height: 40))
        genderButton.anchor(top: emailView.topAnchor, leading: genderLabel.trailingAnchor,
                            trailing: nil, bottom: nil,
                            padding: .init(top: 5, left: 8, bottom: 0, right: 0),
                            size: .init(width: 100, height: 40))
        emailLabel.anchor(top: emailView.topAnchor, leading: genderButton.trailingAnchor,
                          trailing: nil, bottom: nil,
                          padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                          size: .init(width: 60, height: 40))
        emailtextField.anchor(top: emailView.topAnchor, leading: emailLabel.trailingAnchor,
                              trailing: nil, bottom: nil,
                              padding: .init(top: 5, left: 8, bottom: 0, right: 0),
                              size: .init(width: 200, height: 40))
    }
   
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
