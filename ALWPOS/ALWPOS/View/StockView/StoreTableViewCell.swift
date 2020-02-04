//
//  StoreTableViewCell.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 27/10/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class StoreTableViewCell: UITableViewCell {

    var codeLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.blackLabel(text: "1123", fontSize: 14)
        return label
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.blackLabel(text: "storeName", fontSize: 14)
        return label
    }()
    
    lazy var stackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.codeLabel, self.nameLabel])
        sv.axis = .horizontal
        sv.distribution = .fillEqually
        sv.spacing = 2
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    func setupView() {
       addSubview(stackView)
        stackView.anchor(top: topAnchor, leading: leadingAnchor, trailing: trailingAnchor, bottom: bottomAnchor)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
