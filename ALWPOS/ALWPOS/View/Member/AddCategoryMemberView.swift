//
//  AddCategoryMemberView.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 15/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import Foundation
import UIKit

class AddCategoryMemberView: UIView {
    
    var addButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.setTitle("เพิ่ม", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .blueAlway
        button.titleLabel?.font = UIFont(name: "Kanit", size: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var saveButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.setTitle("บันทึก", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .saveGreen
        button.titleLabel?.font = UIFont(name: "Kanit", size: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var deleteButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.setTitle("ลบ", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemRed
        button.titleLabel?.font = UIFont(name: "Kanit", size: 16)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    var titleLabel: UILabel = {
        let lb = UILabel()
        lb.blackLabel(text: "ประเภทลูกค้า", fontSize: 18)
        return lb
    }()
    var codeLabel: PaddingLabel = {
        let lb = PaddingLabel()
        lb.blackLabel(text: "รหัสประเภทลูกค้า", fontSize: 16)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    var nameLabel: PaddingLabel = {
        let lb = PaddingLabel()
        lb.blackLabel(text: "ชื่อประเภทลูกค้า", fontSize: 16)
        lb.translatesAutoresizingMaskIntoConstraints = false
        return lb
    }()
    
    var codeTestField: UITextField = {
        let tf = UITextField()
        tf.setupTextField()
        tf.placeholder = "รหัสประเภทลูกค้า:"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    var nameTestField: UITextField = {
        let tf = UITextField()
        tf.setupTextField()
        tf.placeholder = "ชื่อประเภทลูกค้า:"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    lazy var labelStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.codeLabel,self.nameLabel])
        let width = sv.widthAnchor.constraint(equalToConstant: 150)
        width.isActive = true
        sv.axis = .vertical
        sv.distribution = .fillEqually
        sv.spacing = 4
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    lazy var textFieldStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.codeTestField,self.nameTestField])
        sv.axis = .vertical
        sv.distribution = .fillEqually
        sv.spacing = 4
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    lazy var buttonStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.addButton, self.saveButton, self.deleteButton])
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 8
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    lazy var stackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.labelStackView,self.textFieldStackView])
        sv.axis = .horizontal
        sv.distribution = .fill
        sv.spacing = 4
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        addSubview(titleLabel)
        addSubview(stackView)
        addSubview(buttonStackView)
        titleLabel.anchor(top: topAnchor, leading: leadingAnchor,
                          trailing: trailingAnchor, bottom: nil,
                          padding: .init(top: 16, left: 16, bottom: 0, right: 16))
        stackView.anchor(top: titleLabel.bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor, bottom: nil,
                         padding: .init(top: 16, left: 8, bottom: 0, right: 16),
                         size: .init(width: 0, height: 84))
        
        buttonStackView.anchor(top: nil, leading: leadingAnchor,
                               trailing: trailingAnchor, bottom: bottomAnchor,
                               padding: .init(top: 0, left: 8, bottom: 16, right: 8),
                               size: .init(width: 0, height: 40))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
