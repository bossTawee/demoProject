//
//  DealerCell.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 25/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class DealerCell: UITableViewCell {
    
    var codeLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0)
        label.font = UIFont(name: "Kanit", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor(red:0.00, green:0.00, blue:0.00, alpha:1.0)
        label.font = UIFont(name: "Kanit", size: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
        
    }
    
    func setupView() {
        addSubview(codeLabel)
        addSubview(nameLabel)
        
        codeLabel.anchor(top: topAnchor, leading: leadingAnchor, trailing: nil, bottom: bottomAnchor,
                         padding: .init(top: 0, left: 8, bottom: 0, right: 0), size: .init(width: self.frame.width/2, height: 0))
        nameLabel.anchor(top: topAnchor, leading: codeLabel.trailingAnchor, trailing: trailingAnchor , bottom: bottomAnchor,
                         padding: .init(top: 0, left: 8, bottom: 0, right: 0), size: .init(width: self.frame.width/2, height: 0))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
