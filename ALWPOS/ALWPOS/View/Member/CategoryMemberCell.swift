//
//  CategoryMemberCell.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 15/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import Foundation
import UIKit

class CategoryMemberCell: UITableViewCell {
    
    var codeLabel: PaddingLabel = {
        let label = PaddingLabel()
        let width = label.widthAnchor.constraint(equalToConstant: 150)
        width.isActive = true
        label.blackLabel(text: "รหัสประเภทลูกค้า", fontSize: 14)
        return label
    }()
    
    var categoryLabel: PaddingLabel = {
        let label = PaddingLabel()
        label.blackLabel(text: "ประเภทลูกค้า", fontSize: 14)
        return label
    }()
    
    lazy var labelStackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.codeLabel, self.categoryLabel])
        sv.axis = .horizontal
        sv.distribution = .fill
        sv.spacing = 2
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    func setupView() {
        addSubview(labelStackView)
        addConstraintWithFormat(format: "H:|[v0]|", views: labelStackView)
        addConstraintWithFormat(format: "V:|[v0]|", views: labelStackView)
        
    }
    
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}
