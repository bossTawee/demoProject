//
//  PurchaseHistoryCell.swift
//  ALWPOS
//
//  Created by iMac 2017 21.5" Retina 4K on 8/11/2562 BE.
//  Copyright © 2562 ALW. All rights reserved.
//

import UIKit

class PurchaseHistoryCell: UITableViewCell {
    
    var dateLabel: PaddingLabel = {
        let lb = PaddingLabel()
        let width = lb.widthAnchor.constraint(equalToConstant: 150)
        width.isActive = true
        lb.blackLabel(text:"วันที่", fontSize: 16)
        return lb
    }()
    var listLabel: PaddingLabel = {
        let lb = PaddingLabel()
        lb.blackLabel(text:"รายการ", fontSize: 16)
        return lb
    }()
    var numberlabel: PaddingLabel = {
        let lb = PaddingLabel()
        let width = lb.widthAnchor.constraint(equalToConstant: 150)
        width.isActive = true
        lb.blackLabel(text:"จำนวน", fontSize: 16)
        return lb
    }()
    var discountlabel: PaddingLabel = {
        let lb = PaddingLabel()
        let width = lb.widthAnchor.constraint(equalToConstant: 150)
        width.isActive = true
        lb.blackLabel(text:"ส่วนลด", fontSize: 16)
        return lb
    }()
    var pricelabel: PaddingLabel = {
        let lb = PaddingLabel()
        let width = lb.widthAnchor.constraint(equalToConstant: 150)
        width.isActive = true
        lb.blackLabel(text:"ราคารวม", fontSize: 16)
        return lb
    }()
    var billNumberlabel: PaddingLabel = {
        let lb = PaddingLabel()
        let width = lb.widthAnchor.constraint(equalToConstant: 150)
        width.isActive = true
        lb.blackLabel(text:"เลขที่บิล", fontSize: 16)
        return lb
    }()
    
    lazy var stackView: UIStackView = {
        let sv = UIStackView(arrangedSubviews: [self.dateLabel, self.listLabel, self.numberlabel,
                                                self.discountlabel, self.pricelabel, self.billNumberlabel])
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
        addSubview(stackView)
        stackView.anchor(top: topAnchor, leading: leadingAnchor, trailing: trailingAnchor, bottom: bottomAnchor)
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
