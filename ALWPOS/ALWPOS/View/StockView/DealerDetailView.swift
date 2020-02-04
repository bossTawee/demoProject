//
//  DealerDetailView.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 25/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import Foundation
import  UIKit

class DealerDetailView: UIView {
    
    //MARK: - instance
    
    var detailLabel: UILabel = {
        let label = UILabel()
        label.text = "รายละเอียด"
        label.textColor = UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0)
        label.font = UIFont(name: "Kanit", size: 16)
        return label
    }()
    
    var codeView: UIView = {
        let view = UIView()
        return view
    }()
    
    var codeTextField: UITextField = {
        let textField = UITextField()
        textField.setupTextField()
        textField.placeholder = "รหัสผู้จัดจำหน่าย"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var codeLabel: UILabel = {
        let label = UILabel()
        label.text = "รหัสผู้จัดจำหน่าย"
        label.textColor = UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0)
        label.font = UIFont(name: "Kanit", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var nameView: UIView = {
        let view = UIView()
        return view
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "ชื่อผู้จัดจำหน่าย"
        label.textColor = UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0)
        label.font = UIFont(name: "Kanit", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var nameTextField: UITextField = {
        let textField = UITextField()
        textField.setupTextField()
        textField.placeholder = "ชื่อผู้จัดจำหน่าย"
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    var addressView: UIView = {
        let view = UIView()
        return view
    }()
    
    var addressLabel: UILabel = {
        let label = UILabel()
        label.text = "ที่อยู่"
        label.textColor = UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0)
        label.font = UIFont(name: "Kanit", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var addressTextView: UITextView = {
        let textView = UITextView()
        textView.layer.borderWidth = 1
        textView.layer.borderColor = UIColor.lightGray.cgColor
        textView.backgroundColor = .white
        textView.layer.cornerRadius = 5
        textView.isScrollEnabled = true
        textView.isEditable = true
        textView.font = UIFont(name: "Kanit", size: 14)
        textView.text = "helloWorld"
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    var paymentView: UIView = {
        let view = UIView()
        return view
    }()
    
    var paymentLabel: UILabel = {
        let label = UILabel()
        label.text = "การจ่ายเงิน"
        label.textColor = UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0)
        label.font = UIFont(name: "Kanit", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var paymentButton: UIButton = {
        let button = UIButton()
        button.titleEdgeInsets  = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 0)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.lightGray.cgColor
        button.layer.cornerRadius = 5
        button.setTitle("การจ่ายเงิน", for: .normal)
        button.setTitleColor(.lightGray, for: .normal)
        button.titleLabel?.font = UIFont(name: "Kanit", size: 14)
        button.contentHorizontalAlignment = .left
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var addInfoButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0)
        button.layer.cornerRadius = 5
        button.setTitle("เพิ่มข้อมูล", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Kanit", size: 20)
        button.addTarget(self, action: #selector(addButtonTap), for: .touchUpInside)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var saveInfoButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(red:0.17, green:0.58, blue:0.00, alpha:1.0)
        button.layer.cornerRadius = 5
        button.setTitle("บันทึกข้อมูล", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Kanit", size: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var deleteInfoButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.systemRed
        button.layer.cornerRadius = 5
        button.setTitle("ลบข้อมูล", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Kanit", size: 20)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var cancelButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor.systemOrange
        button.setTitle("ยกเลิก", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Kanit", size: 20)
        button.layer.cornerRadius = 5
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    lazy var stackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.addInfoButton, self.saveInfoButton, self.deleteInfoButton])
        sv.axis = .horizontal
        sv.spacing = 8
        sv.distribution = .fillEqually
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    //MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    //MARK: - @objc
    @objc func addButtonTap() {
        print("text add button......")
    }
    
    
    //MARK: - func
    func setupView() {
        addSubview(detailLabel)
        addSubview(codeView)
        addSubview(nameView)
        addSubview(addressView)
        addSubview(paymentView)
        addSubview(stackView)
        addSubview(cancelButton)
        setupSubView()
        detailLabel.anchor(top: self.topAnchor, leading: self.leadingAnchor, trailing: self.trailingAnchor, bottom: nil,
                           padding: .init(top: 0, left: 16, bottom: 0, right: 16))
        codeView.anchor(top: detailLabel.bottomAnchor, leading: self.leadingAnchor, trailing: self.trailingAnchor, bottom: nil
            , padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 40))
        nameView.anchor(top: codeView.bottomAnchor, leading: self.leadingAnchor, trailing: self.trailingAnchor, bottom: nil,
                        padding: .init(top: 20, left: 0, bottom: 0, right: 0),size: .init(width: 0, height: 40))
        addressView.anchor(top: nameView.bottomAnchor, leading: self.leadingAnchor, trailing: self.trailingAnchor, bottom: nil,
                           padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 150))
        paymentView.anchor(top: addressView.bottomAnchor, leading: self.leadingAnchor, trailing: self.trailingAnchor, bottom: nil,
                           padding: .init(top: 20, left: 0, bottom: 0, right: 0), size: .init(width: 0, height: 40))
        stackView.anchor(top: paymentView.bottomAnchor, leading: self.leadingAnchor, trailing: self.trailingAnchor, bottom: nil,
                         padding: .init(top: 32, left: 8, bottom: 0, right: 8), size: .init(width: 0, height: 40))
        cancelButton.anchor(top: nil, leading: leadingAnchor, trailing: trailingAnchor,
                            bottom: bottomAnchor,
                            padding: .init(top: 0, left: 16, bottom: 8, right: 16),
                            size: .init(width: 0, height: 40))
    }
    
    func setupSubView() {
        codeView.addSubview(codeLabel)
        codeView.addSubview(codeTextField)
        nameView.addSubview(nameLabel)
        nameView.addSubview(nameTextField)
        addressView.addSubview(addressLabel)
        addressView.addSubview(addressTextView)
        paymentView.addSubview(paymentLabel)
        paymentView.addSubview(paymentButton)
        //codeView
        addConstraintWithFormat(format: "H:|-8-[v0(120)]-8-[v1]-8-|", views: codeLabel,codeTextField)
        addConstraintWithFormat(format: "V:|[v0]|", views: codeLabel)
        addConstraintWithFormat(format: "V:|[v0]|", views: codeTextField)
        //nameView
        nameLabel.anchor(top: nameView.topAnchor, leading: nameView.leadingAnchor, trailing: nil, bottom: nameView.bottomAnchor,
                         padding: .init(top: 0, left: 8, bottom: 0, right: 0), size: .init(width: 120, height: nameView.frame.height))
        nameTextField.anchor(top: nameView.topAnchor, leading: nameLabel.trailingAnchor, trailing: nameView.trailingAnchor, bottom: nameView.bottomAnchor,
                             padding: .init(top: 0, left: 8, bottom: 0, right: 8))
        //addressView
        addressLabel.anchor(top: addressView.topAnchor, leading: addressView.leadingAnchor, trailing: nil, bottom: nil,
                            padding: .init(top: 0, left: 8, bottom: 0, right: 0), size: .init(width: 120, height: 40))
        addressTextView.anchor(top: addressView.topAnchor, leading: addressLabel.trailingAnchor, trailing: addressView.trailingAnchor, bottom: addressView.bottomAnchor,
                               padding: .init(top: 0, left: 8, bottom: 8, right: 8))
       //paymentView
        paymentLabel.anchor(top: paymentView.topAnchor, leading: paymentView.leadingAnchor, trailing: nil, bottom: paymentView.bottomAnchor,
                            padding: .init(top: 0, left: 8, bottom: 0, right: 0), size: .init(width: 120, height: 40))
        paymentButton.anchor(top: paymentView.topAnchor, leading: paymentLabel.trailingAnchor, trailing: paymentView.trailingAnchor, bottom: paymentView.bottomAnchor,
                             padding: .init(top: 0, left: 8, bottom: 0, right: 8))
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
