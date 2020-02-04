//
//  ExtensionUILabel.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 24/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    func setupLabel(text: String, textAlign:NSTextAlignment, fontStyle:String , fontSize: CGFloat, color: UIColor) {
        self.text = text
        self.font = UIFont(name: fontStyle, size: fontSize)
        self.textColor = color
        self.textAlignment = textAlign
    }
    
    func blueLabel(text: String, fontSize: CGFloat) {
        self.text = text
        self.font = UIFont(name: "Kanit", size: fontSize)
        self.textColor = UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func blackLabel(text: String, fontSize: CGFloat) {
        self.text = text
        self.font = UIFont(name: "Kanit", size: fontSize)
        self.textColor = .black
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func grayLabel(text: String, fontSize: CGFloat) {
        self.text = text
        self.font = UIFont(name: "Kanit", size: fontSize)
        self.textColor = .systemGray
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func bgLabel(_ text: String, fontSize: CGFloat) {
        self.backgroundColor = .blueAlway
        self.font = UIFont(name: "Kanit", size: fontSize)
        self.text = text
        self.textColor = .white
        self.translatesAutoresizingMaskIntoConstraints = false
    }
}
