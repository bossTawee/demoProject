//
//  AddressView.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 7/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import Foundation
import UIKit

class AddressView: UIView {
    
    //MARK: label
    var houseOnLabel: UILabel = {
        var lb = UILabel()
        lb.blackLabel(text: "บ้านเลขที่", fontSize: 16)
        return lb
    }()
    var mooLabel: UILabel = {
        var lb = UILabel()
        lb.blackLabel(text: "หมู่", fontSize: 16)
        return lb
    }()
    var roadLabel: UILabel = {
        var lb = UILabel()
        lb.blackLabel(text: "ถนน", fontSize: 16)
        return lb
    }()
    var provinceLabel: UILabel = {
        var lb = UILabel()
        lb.blackLabel(text: "จังหวัด", fontSize: 16)
        return lb
    }()
    var areaLabel: UILabel = {
        var lb = UILabel()
        lb.blackLabel(text: "อำเภอ", fontSize: 16)
        return lb
    }()
    var subAreaLabel: UILabel = {
        var lb = UILabel()
        lb.blackLabel(text: "ตำบล", fontSize: 16)
        return lb
    }()
    var postLabel: UILabel = {
        var lb = UILabel()
        lb.blackLabel(text: "ไปรษณีย์", fontSize: 16)
        return lb
    }()
    var telephoneLabel: UILabel = {
        var lb = UILabel()
        lb.blackLabel(text: "เบอร์โทรศัพท์", fontSize: 16)
        return lb
    }()
    var faxLabel: UILabel = {
        var lb = UILabel()
        lb.blackLabel(text: "Fax", fontSize: 16)
        return lb
    }()
    
    //MARK: textfield
    var houseOnTextField: UITextField = {
        let tf = UITextField()
        tf.setupTextField()
        tf.placeholder = "เลขที่"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    var mooTextField: UITextField = {
        let tf = UITextField()
        tf.setupTextField()
        tf.placeholder = "หมู่"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    var roadTextField: UITextField = {
        let tf = UITextField()
        tf.setupTextField()
        tf.placeholder = "ถนน"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    var postTextField: UITextField = {
        let tf = UITextField()
        tf.setupTextField()
        tf.placeholder = "ไปรษณีย์"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    var telephoneTextField: UITextField = {
        let tf = UITextField()
        tf.setupTextField()
        tf.placeholder = "เบอร์โทรศัพท์"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    var faxTextField: UITextField = {
        let tf = UITextField()
        tf.setupTextField()
        tf.placeholder = "fax"
        tf.translatesAutoresizingMaskIntoConstraints = false
        return tf
    }()
    
    //MARK: button
    var provinceButton: UIButton = {
        let b = UIButton()
        b.borderButton()
        b.leftButton()
        b.setTitle("จังหวัด", for: .normal)
        b.setTitleColor(.lightGray, for: .normal)
        b.backgroundColor = .white
        b.titleLabel?.font = UIFont(name: "Kanit", size: 14)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    var areaButton: UIButton = {
        let b = UIButton()
        b.borderButton()
        b.leftButton()
        b.setTitle("อำเถอ", for: .normal)
        b.setTitleColor(.lightGray, for: .normal)
        b.backgroundColor = .white
        b.titleLabel?.font = UIFont(name: "Kanit", size: 14)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    var subAreaButton: UIButton = {
        let b = UIButton()
        b.borderButton()
        b.leftButton()
        b.setTitle("ตำบล", for: .normal)
        b.setTitleColor(.lightGray, for: .normal)
        b.backgroundColor = .white
        b.titleLabel?.font = UIFont(name: "Kanit", size: 14)
        b.translatesAutoresizingMaskIntoConstraints = false
        return b
    }()
    
    //MARK: view
    var firstView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    var secondView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
    var thirdView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()
   
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    func setupView() {
        addSubview(firstView)
        addSubview(secondView)
        addSubview(thirdView)
        setupFiristView()
        setupSecondView()
        setupThirdView()
        firstView.anchor(top: topAnchor, leading: leadingAnchor, trailing: trailingAnchor, bottom: nil,
                         padding: .init(top: 8, left: 0, bottom: 0, right: 0),
                         size: .init(width: frame.width, height: 80))
        secondView.anchor(top: firstView.bottomAnchor, leading: leadingAnchor,
                          trailing: trailingAnchor, bottom: nil,
                          padding: .init(top: 8, left: 0, bottom: 0, right: 0),
                          size: .init(width: frame.width, height: 80))
        thirdView.anchor(top: secondView.bottomAnchor, leading: leadingAnchor, trailing: trailingAnchor , bottom: nil,
                         padding: .init(top: 8, left: 0, bottom: 0, right: 0),
                         size: .init(width: frame.width, height: 80))
        
    }
    
    func setupFiristView() {
        firstView.addSubview(houseOnLabel)
        firstView.addSubview(houseOnTextField)
        firstView.addSubview(mooLabel)
        firstView.addSubview(mooTextField)
        firstView.addSubview(roadLabel)
        firstView.addSubview(roadTextField)
        
        houseOnLabel.anchor(top: firstView.topAnchor, leading: firstView.leadingAnchor,
                            trailing: nil, bottom: nil,
                            padding: .init(top: 0, left: 16, bottom: 0, right: 0),
                            size: .init(width: 200, height: 24))
        mooLabel.anchor(top: firstView.topAnchor, leading: houseOnLabel.trailingAnchor,
                        trailing: nil, bottom: nil,
                        padding: .init(top: 0, left: 16, bottom: 0, right: 0),
                        size: .init(width: 120, height: 24))
        roadLabel.anchor(top: firstView.topAnchor, leading: mooLabel.trailingAnchor,
                         trailing: nil, bottom: nil,
                         padding: .init(top: 0, left: 16, bottom: 0, right: 0),
                         size: .init(width: 200, height: 24))
        houseOnTextField.anchor(top: houseOnLabel.bottomAnchor, leading: firstView.leadingAnchor,
                                trailing: nil, bottom: nil,
                                padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                                size: .init(width: 200, height: 40))

        mooTextField.anchor(top: mooLabel.bottomAnchor, leading: houseOnTextField.trailingAnchor,
                            trailing: nil, bottom: nil,
                            padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                            size: .init(width: 120, height: 40))

        roadTextField.anchor(top: roadLabel.bottomAnchor, leading: mooTextField.trailingAnchor,
                             trailing: nil, bottom: nil,
                             padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                             size: .init(width: 200, height: 40))
        
    }
    func setupSecondView() {
        secondView.addSubview(provinceLabel)
        secondView.addSubview(areaLabel)
        secondView.addSubview(subAreaLabel)
        secondView.addSubview(provinceButton)
        secondView.addSubview(areaButton)
        secondView.addSubview(subAreaButton)
        
        provinceLabel.anchor(top: secondView.topAnchor, leading: secondView.leadingAnchor, trailing: nil, bottom: nil,
                             padding: .init(top: 0, left: 16, bottom: 0, right: 0),
                             size: .init(width: 200, height: 24))
        areaLabel.anchor(top: secondView.topAnchor, leading: provinceLabel.trailingAnchor,
                         trailing: nil, bottom: nil,
                         padding: .init(top: 0, left: 16, bottom: 0, right: 0),
                         size: .init(width: 200, height: 24))
        subAreaLabel.anchor(top: secondView.topAnchor, leading: areaLabel.trailingAnchor,
                            trailing: nil, bottom: nil,
                            padding: .init(top: 0, left: 16, bottom: 0, right: 0),
                            size: .init(width: 200, height: 24))
        provinceButton.anchor(top: provinceLabel.bottomAnchor, leading: secondView.leadingAnchor,
                              trailing: nil, bottom: nil,
                              padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                              size: .init(width: 200, height: 40))
        areaButton.anchor(top: areaLabel.bottomAnchor, leading: provinceButton.trailingAnchor,
                          trailing: nil, bottom: nil,
                          padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                          size: .init(width: 200, height: 40))
        subAreaButton.anchor(top: subAreaLabel.bottomAnchor, leading: areaButton.trailingAnchor,
                             trailing: nil, bottom: nil,
                             padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                             size: .init(width: 200, height: 40))
    }
    
    func setupThirdView() {
        thirdView.addSubview(telephoneLabel)
        thirdView.addSubview(faxLabel)
        thirdView.addSubview(telephoneTextField)
        thirdView.addSubview(faxTextField)
        
        telephoneLabel.anchor(top: thirdView.topAnchor, leading: thirdView.leadingAnchor,
                              trailing: nil, bottom: nil,
                              padding: .init(top: 0, left: 16, bottom: 0, right: 0),
                              size: .init(width: 200, height: 24))
        faxLabel.anchor(top: thirdView.topAnchor, leading: telephoneLabel.trailingAnchor,
                        trailing: nil, bottom: nil,
                        padding: .init(top: 0, left: 16, bottom: 0, right: 0),
                        size: .init(width: 200, height: 24))
        telephoneTextField.anchor(top: telephoneLabel.bottomAnchor, leading: thirdView.leadingAnchor,
                                  trailing: nil, bottom: nil,
                                  padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                                  size: .init(width: 200, height: 40))
        faxTextField.anchor(top: faxLabel.bottomAnchor, leading: telephoneTextField.trailingAnchor,
                            trailing: nil, bottom: nil,
                            padding: .init(top: 5, left: 16, bottom: 0, right: 0),
                            size: .init(width: 200, height: 40))
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
