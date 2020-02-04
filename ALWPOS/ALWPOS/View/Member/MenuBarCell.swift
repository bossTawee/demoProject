//
//  MenuBarCell.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 1/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import Foundation
import UIKit

class MenuBarCell: UICollectionViewCell {
    
    var menuLabel: UILabel = {
        let label = UILabel()
        label.blackLabel(text: "menulabel", fontSize: 16)
        return label
    }()
    
    override var isSelected: Bool {
        didSet {
            menuLabel.textColor = isSelected ? UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0) : UIColor.black
        }
    }
    
    override var isHighlighted: Bool {
        didSet {
            menuLabel.textColor = isHighlighted ? UIColor(red:0.17, green:0.58, blue:0.94, alpha:1.0) : UIColor.black
        }
    }
    
    //MARK: - init
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    func setupView() {
        addSubview(menuLabel)
        menuLabel.anchor(top: topAnchor, leading: leadingAnchor, trailing: trailingAnchor, bottom: bottomAnchor,
                         padding: .init(top: 8, left: 16, bottom: 8, right: 8))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func uiintiCell() {
        
    }
}
