//
//  ExtensionView.swift
//  ALWPOS
//
//  Created by Hive on 13/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    func borderView() {
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(red:0.89, green:0.89, blue:0.89, alpha:1.0).cgColor
    }
    
    func round(corners: UIRectCorner, cornerRadius: Double) {
        
        let size = CGSize(width: cornerRadius, height: cornerRadius)
        let bezierPath = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: size)
        let shapeLayer = CAShapeLayer()
        shapeLayer.frame = self.bounds
        shapeLayer.path = bezierPath.cgPath
        self.layer.mask = shapeLayer
    }
    
    func topRounds(cornerRadius: Double) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: [.topLeft, .topRight],
                                cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        let maskLayer = CAShapeLayer()
        maskLayer.frame = self.bounds
        maskLayer.path = path.cgPath
        self.layer.mask = maskLayer
        self.backgroundColor = UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0)
    }
    
    func roundedAllCorner(){
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(red:0.89, green:0.89, blue:0.89, alpha:1.0).cgColor
        self.layer.cornerRadius = 5
    }
    
    func roundedAllCorner(view: UIView){
        var yourViewBorder = CAShapeLayer()
        yourViewBorder.strokeColor = UIColor.black.cgColor
        yourViewBorder.lineDashPattern = [2, 2]
        yourViewBorder.frame = view.bounds
        yourViewBorder.fillColor = nil
        yourViewBorder.path = UIBezierPath(rect: view.bounds).cgPath
    }
    
    func addConstraintWithFormat(format: String, views: UIView...) {
        var viewDictionary = [String: UIView]()
        for (index,view) in views.enumerated() {
            let key = "v\(index)"
            viewDictionary[key] = view
        }
        
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: format,
                                                      options: NSLayoutConstraint.FormatOptions(),
                                                      metrics: nil, views: viewDictionary))
    }
    
    func viewCornerRadius(){
        self.layer.cornerRadius = 5
    }
    
    func autoSizeAnchor(to view: UIView) {
        widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
    }
    
    func anchor(top: NSLayoutYAxisAnchor?, leading: NSLayoutXAxisAnchor?,
                trailing: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?,
                padding: UIEdgeInsets = .zero, size: CGSize = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: padding.top).isActive = true
        }
        if let leading = leading {
            leadingAnchor.constraint(equalTo: leading, constant: padding.left).isActive = true
        }
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -padding.bottom).isActive = true
        }
        if let trailing = trailing {
            trailingAnchor.constraint(equalTo: trailing, constant: -padding.right).isActive = true
        }
        
        if size.width != 0 {
            widthAnchor.constraint(greaterThanOrEqualToConstant: size.width).isActive = true
        }
        
        if size.height != 0 {
            heightAnchor.constraint(greaterThanOrEqualToConstant: size.height).isActive = true
        }
    }
}

