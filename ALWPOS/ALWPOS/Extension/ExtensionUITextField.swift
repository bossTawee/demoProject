//
//  ExtensionUITextField.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 25/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    
    func setupTextField() {
        let paddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 20))
        self.leftView = paddingView
        self.leftViewMode = .always
        self.font = UIFont(name: "Kanit", size: 14)
        self.backgroundColor = .white
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
        self.layer.borderColor = UIColor(red:0.89, green:0.89, blue:0.89, alpha:1.0).cgColor
    }
    
    func setLeftImage(imageName:String) {
        let padding = 8
        let size = 20

        let outerView = UIView(frame: CGRect(x: 0, y: 0, width: size+padding, height: size) )
        let iconView  = UIImageView(frame: CGRect(x: padding, y: 0, width: size, height: size))
        iconView.image = UIImage(named: imageName)
        outerView.addSubview(iconView)

        leftView = outerView
        leftViewMode = .always
    }
}
